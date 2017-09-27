#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <geometry_msgs/Twist.h>

#define dt 100.0
#define obs_limit 1.0

sensor_msgs::LaserScan scan_data;

void laser_callback(const sensor_msgs::LaserScan::ConstPtr& msg) {
   scan_data = *msg;
}

int main(int argc, char** argv) {

   ros::init(argc, argv, "basic_obstacle_avoidance");
   ros::NodeHandle nh;

   ros::Publisher vel_cmd = nh.advertise<geometry_msgs::Twist>("/cmd_vel", 10);
   ros::Subscriber laser_data = nh.subscribe("/scan", 10, laser_callback);
   
   geometry_msgs::Twist cmd;
   cmd.linear.x = 0.25;
   ros::Rate rate(dt);

   ros::Duration(1.5).sleep();
   ros::spinOnce();
   bool stop = false;
   while(ros::ok()) {
      ros::spinOnce();
      if(stop) {
         cmd.linear.x = 0.0;
      }
      vel_cmd.publish(cmd);
      int obs_count = 0;
      for(int i=480; i<601; i++) {
         if(scan_data.ranges[i] < obs_limit) {
            obs_count++;
         }
      }
      //ROS_INFO_STREAM(obs_count);
      if(obs_count >= 35) {
         stop = true;
         ROS_INFO("Obstacle Detected!");
      }
      rate.sleep();      
   }
   return 0;
}
