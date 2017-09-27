#include <ros/ros.h>
#include <geometry_msgs/TransformStamped.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>

geometry_msgs::PoseWithCovarianceStamped jackal2Pose;

void callback(const geometry_msgs::TransformStamped::ConstPtr& data)
{
  ROS_INFO("Transform Received");
  jackal2Pose.pose.pose.position.x = data->transform.translation.x;
  jackal2Pose.pose.pose.position.y = data->transform.translation.y;
  jackal2Pose.pose.pose.position.z = data->transform.translation.z;
  jackal2Pose.pose.pose.orientation = data->transform.rotation;
}

int main(int argc, char **argv)
{

  ros::init(argc, argv, "vicon_pose_node");

  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("/vicon/jackal2/jackal2", 1000, callback);
  ros::Publisher pub = n.advertise<geometry_msgs::PoseWithCovarianceStamped>("/jackal2/pose", 1000);

  while(ros::ok())
  {
    pub.publish(jackal2Pose);
    ros::spinOnce();
  }

  return 0;
}
