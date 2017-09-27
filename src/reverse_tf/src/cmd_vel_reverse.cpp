#include "ros/ros.h"
#include "std_msgs/String.h"
#include "geometry_msgs/Twist.h"
#include <sstream>

ros::Publisher chatter_pub;

void cmdVelCallback(const geometry_msgs::Twist::ConstPtr& msg) {
  geometry_msgs::Twist nmsg;
  nmsg.linear.x = -msg->linear.x;
  nmsg.angular.z = -msg->angular.z;
  chatter_pub.publish(nmsg);
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "cmd_vel_reverse");
  ros::NodeHandle n;
  ros::Subscriber cmd_vel_getter = n.subscribe("/cmd_vel", 10, cmdVelCallback);
  chatter_pub = n.advertise<geometry_msgs::Twist>("cmd_vel_reverse", 10);
  
  ros::spin();
}  
