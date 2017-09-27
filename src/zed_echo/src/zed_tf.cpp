#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <tf/transform_listener.h>
#include <tf/transform_datatypes.h>

int main(int argc, char** argv){
 	ros::init(argc, argv, "zed_tf_broadcaster");
 	ros::NodeHandle nh;
	ros::Rate loop_rate = 20;

	tf::TransformListener listener;
	tf::StampedTransform transform;
	tf::Transform zed;
	tf::TransformBroadcaster br;

  	while(ros::ok()) {
		listener.waitForTransform("/odom", "/mid_mount", ros::Time(0), ros::Duration(100.0));
		listener.lookupTransform("/odom", "/mid_mount", ros::Time(0), transform);
		zed.setOrigin(tf::Vector3(-0.055,0,0.19));
		zed.setRotation(tf::Quaternion(0, 0, 1, 0));
		br.sendTransform(tf::StampedTransform(zed, transform.stamp_, "mid_mount", "zed_cam"));
		loop_rate.sleep();
	}
  return 0;
};
