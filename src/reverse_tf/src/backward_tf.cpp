#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <tf/transform_listener.h>
#include <tf/transform_datatypes.h>

int main(int argc, char** argv){
        ros::init(argc, argv, "reverse_tf_broadcaster");
        ros::NodeHandle nh;
        ros::Rate loop_rate = 50;

        tf::TransformListener listener;
        tf::StampedTransform transform;
        tf::Transform base;
        tf::TransformBroadcaster br;

        while(ros::ok()) {
                listener.waitForTransform("/odom", "/base_link", ros::Time(0), ros::Duration(100.0));
                listener.lookupTransform("/odom", "/base_link", ros::Time(0), transform);
                base.setOrigin(tf::Vector3(0,0,0));
                tf::Quaternion q = transform.getRotation();
                tf::Matrix3x3 m(q);

                double wYaw, wRoll, wPitch;
                m.getRPY(wRoll, wPitch, wYaw);
                q.setRPY(0,0,M_PI);
                base.setRotation(q);
                br.sendTransform(tf::StampedTransform(base, transform.stamp_, "/odom", "/base_link_fr"));
                loop_rate.sleep();
        }
  return 0;
};




