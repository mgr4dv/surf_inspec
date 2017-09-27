#include "ros/ros.h"
#include <sensor_msgs/LaserScan.h>
#include <sensor_msgs/Joy.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/Twist.h>
#include <string.h>
#include <std_msgs/String.h>

/*struct obs{
	float angle_min;
  	float angle_max;
	std::vector<float> points;
}obs;

std::vector<struct obs*> obs_list;
*/

ros::Time past;
ros::Publisher as_pub;
ros::Publisher cmd_pub;
geometry_msgs:: Twist pos;
geometry_msgs:: Twist forcePos;
geometry_msgs:: Twist newPos;
geometry_msgs:: Twist pid;


float w0 = 0;
float angle = 0;
float fx = 0;
float fy =0;

void laserCallback(const sensor_msgs::LaserScan::ConstPtr& msg){

	float p0 =1; 
	float ni = 0.2;	
	float piSmall = 10; 
	
	for (int i = 0; i < msg -> ranges.size(); i++){
	
		if (msg -> ranges[i] >= 0.02 && msg -> ranges[i] <= 10){
			float pi = msg -> ranges[i];
			float angle = (msg -> angle_min + (msg -> angle_increment*i));
				
			if (pi <= p0 && pi < piSmall){
				piSmall = pi;
				float direction  = sin(angle); 
				float f0 = ni * (1/pi - 1/p0) * (1/pow(1/pi,2)) * -pos.linear.x;
				ROS_INFO("f0 %f", f0);
				ROS_INFO("pi %f", pi);
				ROS_INFO("pismall %f", piSmall);

				fx = -f0*sin(angle);
				fy = -f0*cos(angle);
				forcePos.linear.x =  sqrt(pow(fx,2) + pow(fy,2));
				forcePos.angular.z  = atan(fx/fy);
				f0 = 0; 

				if (isnan(forcePos.angular.z)){
					forcePos.angular.z =  0;
					break;	

				}

				//f0 = 0;
				//return;
				//as_pub.publish(forcePos); 				
			}
			//break;

		}

	}
	
}

void velCallback(const geometry_msgs::Twist::ConstPtr& msg){ 
	

	pos.linear.x = (msg -> linear.x);
	pos.angular.z = -(msg -> angular.z);  
	//cmd_pub.publish(pos);

}

void timeCallback(const nav_msgs::Odometry::ConstPtr& msg){ 

	float setpointX = 0;
	float eSumX, lastErrX, errorX, dErrX;
	double kpX, kiX, kdX;

	float setpointZ = 0;
	float eSumZ, lastErrZ, errorZ, dErrZ;
	double kpZ, kiZ, kdZ;
	
	newPos.linear.x =  pos.linear.x + forcePos.linear.x;
	newPos.angular.z = pos.angular.z + forcePos.angular.z; 

	
	double dT = msg->header.stamp.toSec() - past.toSec();
	past = msg->header.stamp;

	errorX = setpointX - newPos.linear.x;
	eSumX += errorX * (float)dT;
	dErrX =  (errorX - lastErrX) / (float)dT;
	
	errorZ = setpointZ - newPos.angular.z;
	eSumZ += errorZ * (float)dT;
	dErrZ =  (errorZ - lastErrZ) / (float)dT;

	kpX = 1;
	kpZ = 1;

	kiX = 0;
	kiZ = 0;
	
	kdX = 0.0031;
	kdZ = 0.0031;

	pid.linear.x = (float)kpX*errorX + (float)kiX*eSumX + (float)kdX*dErrX;
        pid.angular.z = (float)kpZ*errorZ + (float)kiZ*eSumZ + (float)kdZ*dErrZ;

	lastErrX = errorX;
	lastErrZ = errorZ;
		
	//cmd_pub.publish(pid);
	as_pub.publish(pid); 
}



int main(int argc, char **argv){

	ros::init(argc, argv, "ac");
	ros::NodeHandle nh;
	
	ros::Subscriber scan_sub = nh.subscribe("/back_scan",10,laserCallback);
	ros::Subscriber vel_sub = nh.subscribe("/cmd_vel",10,velCallback);
	ros::Subscriber time_sub = nh.subscribe("/jackal_velocity_controller/odom",10,timeCallback);

	//cmd_pub = nh.advertise<geometry_msgs::Twist>("/jackal_velocity_controller/cmd_vel",1);
	as_pub = nh.advertise<geometry_msgs::Twist>("/assisted_controller",1);

	past = ros::Time::now();

	ros::spin();
	return 0;
}

