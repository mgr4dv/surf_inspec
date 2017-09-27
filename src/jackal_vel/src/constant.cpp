#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <sensor_msgs/Joy.h>

bool a = false;
bool b = false;
bool c = false;

void joy_callback(const sensor_msgs::Joy::ConstPtr& msg)
{
	if(!msg->buttons[10] && !msg->buttons[8]) {
		if(msg->buttons[15]) {
			ROS_INFO("1.0 Hit");
			a = !a;
			b = false;
			c = false;

		}else if(msg->buttons[14]) {
			ROS_INFO("1.5 Hit");
			a = false;
			b = !b;
			c = false;
		}else if(msg->buttons[13]) {
			ROS_INFO("2.0 Hit");
			a = false;
			b = false;
			c = !c;
		}else {
			a = false;
			b = false;
			c = false;
		}
	}else {
		a = false;
		b = false;
		c = false;
	}
}

int main(int argc, char** argv) {

	ros::init(argc, argv, "Constant_vel");
	ros::NodeHandle nh;

	ros::Publisher vel_cmd = nh.advertise<geometry_msgs::Twist>("/jackal_velocity_controller/cmd_vel", 10);
	ros::Subscriber joy_sub = nh.subscribe("/bluetooth_teleop/joy", 10, joy_callback);

	while(ros::ok()) {
		ros::spinOnce();
		geometry_msgs::Twist cmd;
		if(a) {
			cmd.linear.x = 1.0;
			vel_cmd.publish(cmd);
		}else if(b) {
			cmd.linear.x = 1.5;
			vel_cmd.publish(cmd);
		}else if(c) {
			cmd.linear.x = 2.0;
			vel_cmd.publish(cmd);
		}
	}
	return 0;
}
