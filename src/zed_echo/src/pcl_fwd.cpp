#include <ros/ros.h>
#include <sensor_msgs/PointCloud2.h>
ros::Publisher pcl;

/* -------------------- callbacks -------------------- */
void pclCallback(const sensor_msgs::PointCloud2::ConstPtr& msg)
{
	sensor_msgs::PointCloud2 pcl_new = *msg;
	pcl_new.header.frame_id="/zed_cam";
	pcl.publish(pcl_new);
}

int main(int argc, char** argv) {
	ros::init(argc, argv, "zed_echo");
	ros::NodeHandle nh;
  
	/* -------------------- Publishers, and Subscribers -------------------- */
  pcl = nh.advertise<sensor_msgs::PointCloud2>("/jackal/zed/point_cloud/cloud_registered", 1);
  ros::Subscriber status = nh.subscribe("/zed/point_cloud/cloud_registered", 10, pclCallback);						// Trajectory completion status

	ros::spin();
	return 0;
}
