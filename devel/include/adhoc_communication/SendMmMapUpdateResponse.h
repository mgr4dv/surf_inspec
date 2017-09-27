// Generated by gencpp from file adhoc_communication/SendMmMapUpdateResponse.msg
// DO NOT EDIT!


#ifndef ADHOC_COMMUNICATION_MESSAGE_SENDMMMAPUPDATERESPONSE_H
#define ADHOC_COMMUNICATION_MESSAGE_SENDMMMAPUPDATERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace adhoc_communication
{
template <class ContainerAllocator>
struct SendMmMapUpdateResponse_
{
  typedef SendMmMapUpdateResponse_<ContainerAllocator> Type;

  SendMmMapUpdateResponse_()
    : status(0)  {
    }
  SendMmMapUpdateResponse_(const ContainerAllocator& _alloc)
    : status(0)  {
  (void)_alloc;
    }



   typedef uint8_t _status_type;
  _status_type status;




  typedef boost::shared_ptr< ::adhoc_communication::SendMmMapUpdateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::adhoc_communication::SendMmMapUpdateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SendMmMapUpdateResponse_

typedef ::adhoc_communication::SendMmMapUpdateResponse_<std::allocator<void> > SendMmMapUpdateResponse;

typedef boost::shared_ptr< ::adhoc_communication::SendMmMapUpdateResponse > SendMmMapUpdateResponsePtr;
typedef boost::shared_ptr< ::adhoc_communication::SendMmMapUpdateResponse const> SendMmMapUpdateResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::adhoc_communication::SendMmMapUpdateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::adhoc_communication::SendMmMapUpdateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace adhoc_communication

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/indigo/share/nav_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'adhoc_communication': ['/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::adhoc_communication::SendMmMapUpdateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::adhoc_communication::SendMmMapUpdateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::adhoc_communication::SendMmMapUpdateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::adhoc_communication::SendMmMapUpdateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::adhoc_communication::SendMmMapUpdateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::adhoc_communication::SendMmMapUpdateResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::adhoc_communication::SendMmMapUpdateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "284aa12dd9e9e760802ac9f38036ea5e";
  }

  static const char* value(const ::adhoc_communication::SendMmMapUpdateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x284aa12dd9e9e760ULL;
  static const uint64_t static_value2 = 0x802ac9f38036ea5eULL;
};

template<class ContainerAllocator>
struct DataType< ::adhoc_communication::SendMmMapUpdateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "adhoc_communication/SendMmMapUpdateResponse";
  }

  static const char* value(const ::adhoc_communication::SendMmMapUpdateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::adhoc_communication::SendMmMapUpdateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 status\n\
\n\
";
  }

  static const char* value(const ::adhoc_communication::SendMmMapUpdateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::adhoc_communication::SendMmMapUpdateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SendMmMapUpdateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::adhoc_communication::SendMmMapUpdateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::adhoc_communication::SendMmMapUpdateResponse_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ADHOC_COMMUNICATION_MESSAGE_SENDMMMAPUPDATERESPONSE_H
