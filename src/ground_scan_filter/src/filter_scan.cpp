#include "ros/ros.h"
#include <sensor_msgs/LaserScan.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/Twist.h>
#include <tf/transform_listener.h>
#include <tf/transform_datatypes.h>
#include <string.h>
#include <std_msgs/String.h>

ros::Publisher filter_pub;
geometry_msgs::Point pos;

struct transform{ 
	float x; 
	float y; 
	float z;
	float pitch;
	float offset;
	float robot;
}rear;

void odomFilterCallback(const nav_msgs::Odometry::ConstPtr& msg){
	
	pos.z= msg -> pose.pose.position.z;
	rear.offset = pos.z;
	
}

void laserCallback(const sensor_msgs::LaserScan::ConstPtr& msg){
	sensor_msgs::LaserScan output;
	output.header = msg->header;
	int start = ceil(msg->ranges.size()/3);
	int fin = start*2;
	float mean = 0.0;
	for(int i=start; i != fin; i++) {

		//float angle_min = msg->angle_min;
		//float angle_inc = msg->angle_increment;

		float phi = msg -> angle_min +((msg -> angle_increment )*i);
		
		//float rphi = msg -> ranges[i];
		//float r = rphi*cos(phi);
		//float theta = rear.pitch;
		//float z = cos(theta)*r;

		float z = (msg -> ranges[i]) * cos(phi) * cos(rear.pitch);

		float zRobot = rear.robot;
		float zOffset = rear.offset;
		float thres_ground = 0.12;
		float pub = std::abs(z-(zRobot - zOffset));
		float thres_above = 0.05;

		ROS_INFO("when to publish data: %f", pub);
		ROS_INFO("z: %f", z);
		//ROS_INFO("zrobot: %f", zRobot);
		//ROS_INFO("zoffset: %f", zOffset);
		//ROS_INFO("difference: %f", z - zRobot);
		
		if (std::abs(z-(zRobot - zOffset)) >= thres_ground || std::abs(z-(zRobot - zOffset)) <= thres_above){
			output = *msg;
			//ROS_INFO("size: %i", int(msg->ranges.size()));
			//ROS_INFO("YAY");
			//break;
		}
		//mean += z;
	}
	filter_pub.publish(output);
}

int main(int argc, char **argv){
	ros::init(argc, argv, "filteredScan");
	ros::NodeHandle nh;

	ros::Subscriber scan_sub = nh.subscribe("/back_scan",10,laserCallback);
	ros::Subscriber odom_sub = nh.subscribe("/odometry/filtered",10,odomFilterCallback);
	filter_pub = nh.advertise<sensor_msgs::LaserScan>("/back_scan/filtered",1);

	tf::StampedTransform transform;
	tf::TransformListener listener;

	std::string rear_mount, rear_lidar, odom;
	rear_mount = "/rear_mount";
	rear_lidar = "/rear_lidar";
	odom = "/odom";

	listener.waitForTransform(rear_mount,rear_lidar, ros::Time(0), ros::Duration(3.0));
	listener.lookupTransform(rear_mount, rear_lidar,ros::Time(0),transform);
	tf::Quaternion q = transform.getRotation();
	tf::Matrix3x3 m(q);
	double roll, pitch, yaw;
	m.getRPY(roll, pitch, yaw);
	rear.pitch = pitch;

	listener.waitForTransform(odom, rear_lidar, ros::Time(0), ros::Duration(3.0));
	listener.lookupTransform(odom, rear_lidar,ros::Time(0),transform);
	rear.robot = transform.getOrigin().z();


	ros::spin();
	return 0;
}
