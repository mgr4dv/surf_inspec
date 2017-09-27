// Generated by gencpp from file adhoc_communication/SendExpFrontierRequest.msg
// DO NOT EDIT!


#ifndef ADHOC_COMMUNICATION_MESSAGE_SENDEXPFRONTIERREQUEST_H
#define ADHOC_COMMUNICATION_MESSAGE_SENDEXPFRONTIERREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <adhoc_communication/ExpFrontier.h>

namespace adhoc_communication
{
template <class ContainerAllocator>
struct SendExpFrontierRequest_
{
  typedef SendExpFrontierRequest_<ContainerAllocator> Type;

  SendExpFrontierRequest_()
    : dst_robot()
    , topic()
    , frontier()  {
    }
  SendExpFrontierRequest_(const ContainerAllocator& _alloc)
    : dst_robot(_alloc)
    , topic(_alloc)
    , frontier(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _dst_robot_type;
  _dst_robot_type dst_robot;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _topic_type;
  _topic_type topic;

   typedef  ::adhoc_communication::ExpFrontier_<ContainerAllocator>  _frontier_type;
  _frontier_type frontier;




  typedef boost::shared_ptr< ::adhoc_communication::SendExpFrontierRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::adhoc_communication::SendExpFrontierRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SendExpFrontierRequest_

typedef ::adhoc_communication::SendExpFrontierRequest_<std::allocator<void> > SendExpFrontierRequest;

typedef boost::shared_ptr< ::adhoc_communication::SendExpFrontierRequest > SendExpFrontierRequestPtr;
typedef boost::shared_ptr< ::adhoc_communication::SendExpFrontierRequest const> SendExpFrontierRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::adhoc_communication::SendExpFrontierRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::adhoc_communication::SendExpFrontierRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace adhoc_communication

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/indigo/share/nav_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'adhoc_communication': ['/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::adhoc_communication::SendExpFrontierRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::adhoc_communication::SendExpFrontierRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::adhoc_communication::SendExpFrontierRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::adhoc_communication::SendExpFrontierRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::adhoc_communication::SendExpFrontierRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::adhoc_communication::SendExpFrontierRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::adhoc_communication::SendExpFrontierRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "da93ebf66d2d90a5278c997ea3c0023b";
  }

  static const char* value(const ::adhoc_communication::SendExpFrontierRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xda93ebf66d2d90a5ULL;
  static const uint64_t static_value2 = 0x278c997ea3c0023bULL;
};

template<class ContainerAllocator>
struct DataType< ::adhoc_communication::SendExpFrontierRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "adhoc_communication/SendExpFrontierRequest";
  }

  static const char* value(const ::adhoc_communication::SendExpFrontierRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::adhoc_communication::SendExpFrontierRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string dst_robot\n\
string topic\n\
adhoc_communication/ExpFrontier frontier\n\
\n\
================================================================================\n\
MSG: adhoc_communication/ExpFrontier\n\
ExpFrontierElement[] frontier_element\n\
\n\
================================================================================\n\
MSG: adhoc_communication/ExpFrontierElement\n\
int64 id\n\
string detected_by_robot_str\n\
int64 detected_by_robot\n\
float64 robot_home_position_x\n\
float64 robot_home_position_y\n\
float64 x_coordinate\n\
float64 y_coordinate\n\
";
  }

  static const char* value(const ::adhoc_communication::SendExpFrontierRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::adhoc_communication::SendExpFrontierRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.dst_robot);
      stream.next(m.topic);
      stream.next(m.frontier);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SendExpFrontierRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::adhoc_communication::SendExpFrontierRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::adhoc_communication::SendExpFrontierRequest_<ContainerAllocator>& v)
  {
    s << indent << "dst_robot: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.dst_robot);
    s << indent << "topic: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.topic);
    s << indent << "frontier: ";
    s << std::endl;
    Printer< ::adhoc_communication::ExpFrontier_<ContainerAllocator> >::stream(s, indent + "  ", v.frontier);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ADHOC_COMMUNICATION_MESSAGE_SENDEXPFRONTIERREQUEST_H
