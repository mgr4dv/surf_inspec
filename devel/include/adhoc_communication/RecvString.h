// Generated by gencpp from file adhoc_communication/RecvString.msg
// DO NOT EDIT!


#ifndef ADHOC_COMMUNICATION_MESSAGE_RECVSTRING_H
#define ADHOC_COMMUNICATION_MESSAGE_RECVSTRING_H


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
struct RecvString_
{
  typedef RecvString_<ContainerAllocator> Type;

  RecvString_()
    : src_robot()
    , data()  {
    }
  RecvString_(const ContainerAllocator& _alloc)
    : src_robot(_alloc)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _src_robot_type;
  _src_robot_type src_robot;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _data_type;
  _data_type data;




  typedef boost::shared_ptr< ::adhoc_communication::RecvString_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::adhoc_communication::RecvString_<ContainerAllocator> const> ConstPtr;

}; // struct RecvString_

typedef ::adhoc_communication::RecvString_<std::allocator<void> > RecvString;

typedef boost::shared_ptr< ::adhoc_communication::RecvString > RecvStringPtr;
typedef boost::shared_ptr< ::adhoc_communication::RecvString const> RecvStringConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::adhoc_communication::RecvString_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::adhoc_communication::RecvString_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::adhoc_communication::RecvString_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::adhoc_communication::RecvString_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::adhoc_communication::RecvString_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::adhoc_communication::RecvString_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::adhoc_communication::RecvString_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::adhoc_communication::RecvString_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::adhoc_communication::RecvString_<ContainerAllocator> >
{
  static const char* value()
  {
    return "357efa7118aea6ce32be041203afb4ca";
  }

  static const char* value(const ::adhoc_communication::RecvString_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x357efa7118aea6ceULL;
  static const uint64_t static_value2 = 0x32be041203afb4caULL;
};

template<class ContainerAllocator>
struct DataType< ::adhoc_communication::RecvString_<ContainerAllocator> >
{
  static const char* value()
  {
    return "adhoc_communication/RecvString";
  }

  static const char* value(const ::adhoc_communication::RecvString_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::adhoc_communication::RecvString_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string src_robot\n\
string data\n\
";
  }

  static const char* value(const ::adhoc_communication::RecvString_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::adhoc_communication::RecvString_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.src_robot);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RecvString_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::adhoc_communication::RecvString_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::adhoc_communication::RecvString_<ContainerAllocator>& v)
  {
    s << indent << "src_robot: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.src_robot);
    s << indent << "data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ADHOC_COMMUNICATION_MESSAGE_RECVSTRING_H
