#include <cstdio>
#include <ros/ros.h>

#include "laser_assembler/AssembleScans2.h"

#include "sensor_msgs/PointCloud2.h"

namespace laser_assembler
{

class PeriodicSnapshotter
{

public:

  PeriodicSnapshotter()
  {

    pub_ = n_.advertise<sensor_msgs::PointCloud2> ("assembled_cloud", 1);

    client_ = n_.serviceClient<AssembleScans2>("assemble_scans2");

    timer_ = n_.createTimer(ros::Duration(0,50000000), &PeriodicSnapshotter::timerCallback, this);

    first_time_ = true;
  }

  void timerCallback(const ros::TimerEvent& e)
  {

    if (first_time_)
    {
      first_time_ = false;
      return;
    }

    AssembleScans2 srv;
    srv.request.begin = e.last_real;
    srv.request.end = e.current_real;

    if (client_.call(srv))
    {
      ROS_INFO("Published Cloud with %u points", (uint32_t)(srv.response.cloud.data.size()));
      pub_.publish(srv.response.cloud);
    }
    else
    {
      ROS_ERROR("Error making service call\n");
    }
  }

private:
  ros::NodeHandle n_;
  ros::Publisher pub_;
  ros::ServiceClient client_;
  ros::Timer timer_;
  bool first_time_;
};

}

using namespace laser_assembler;

int main(int argc, char **argv)
{
  ros::init(argc, argv, "periodic_snapshotter");
  ros::NodeHandle n;
  ROS_INFO("Waiting for [build_cloud] to be advertised");
  ros::service::waitForService("build_cloud");
  ROS_INFO("Found build_cloud! Starting the snapshotter");
  PeriodicSnapshotter snapshotter;
  ros::spin();
  return 0;
}








