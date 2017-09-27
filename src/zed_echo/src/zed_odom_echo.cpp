#include <ros/ros.h>
#include <nav_msgs/Odometry.h>
ros::Publisher odom;

/* -------------------- callbacks -------------------- */
void odomCallback(const nav_msgs::Odometry::ConstPtr& msg)
{
	nav_msgs::Odometry newOdom = *msg;
	newOdom.header.frame_id = "/zed_cam";
	newOdom.child_frame_id = "/zed_cam";
	odom.publish(newOdom);
}

int main(int argc, char** argv) {
	ros::init(argc, argv, "zed_odom_echo");
	ros::NodeHandle nh;
  
	/* -------------------- Publishers, and Subscribers -------------------- */
  odom = nh.advertise<nav_msgs::Odometry>("/jackal/zed/odom", 1);
  ros::Subscriber status = nh.subscribe("/zed/odom", 10, odomCallback);	

	ros::spin();
	return 0;
}
