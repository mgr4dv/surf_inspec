#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <tf/transform_listener.h>
#include <tf/transform_datatypes.h>

int main(int argc, char** argv){
 	ros::init(argc, argv, "lidar_tf_broadcaster");
 	ros::NodeHandle nh;
	ros::Rate loop_rate = 40;

	tf::TransformListener listener;
	tf::StampedTransform transform;
	tf::Transform lidar;
	tf::TransformBroadcaster br;

  	while(ros::ok()) {
		listener.waitForTransform("/odom", "/mid_mount", ros::Time(0), ros::Duration(100.0));
		listener.lookupTransform("/odom", "/mid_mount", ros::Time(0), transform);
		lidar.setOrigin(tf::Vector3(0,0,0.1699));
		lidar.setRotation(tf::Quaternion(0, 0, 0, 1));
		br.sendTransform(tf::StampedTransform(lidar, transform.stamp_, "/mid_mount", "/mid_lidar"));

		listener.waitForTransform("/odom", "/rear_mount", ros::Time(0), ros::Duration(100.0));
		listener.lookupTransform("/odom", "/rear_mount", ros::Time(0), transform);
		lidar.setOrigin(tf::Vector3(-0.14,0,-0.0376));
		tf::Quaternion q = transform.getRotation();
		tf::Matrix3x3 m(q);

		double wYaw, wRoll, wPitch;
		m.getRPY(wRoll, wPitch, wYaw);
		q.setRPY(0,0.896055385,M_PI);
		lidar.setRotation(q);
		br.sendTransform(tf::StampedTransform(lidar, transform.stamp_, "/rear_mount", "/rear_lidar"));
		loop_rate.sleep();
	}
  return 0;
};
