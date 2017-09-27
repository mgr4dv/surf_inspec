// Generated by gencpp from file adhoc_communication/SendTwist.msg
// DO NOT EDIT!


#ifndef ADHOC_COMMUNICATION_MESSAGE_SENDTWIST_H
#define ADHOC_COMMUNICATION_MESSAGE_SENDTWIST_H

#include <ros/service_traits.h>


#include <adhoc_communication/SendTwistRequest.h>
#include <adhoc_communication/SendTwistResponse.h>


namespace adhoc_communication
{

struct SendTwist
{

typedef SendTwistRequest Request;
typedef SendTwistResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SendTwist
} // namespace adhoc_communication


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::adhoc_communication::SendTwist > {
  static const char* value()
  {
    return "46299e0838939232782f7a144baadd0c";
  }

  static const char* value(const ::adhoc_communication::SendTwist&) { return value(); }
};

template<>
struct DataType< ::adhoc_communication::SendTwist > {
  static const char* value()
  {
    return "adhoc_communication/SendTwist";
  }

  static const char* value(const ::adhoc_communication::SendTwist&) { return value(); }
};


// service_traits::MD5Sum< ::adhoc_communication::SendTwistRequest> should match 
// service_traits::MD5Sum< ::adhoc_communication::SendTwist > 
template<>
struct MD5Sum< ::adhoc_communication::SendTwistRequest>
{
  static const char* value()
  {
    return MD5Sum< ::adhoc_communication::SendTwist >::value();
  }
  static const char* value(const ::adhoc_communication::SendTwistRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::adhoc_communication::SendTwistRequest> should match 
// service_traits::DataType< ::adhoc_communication::SendTwist > 
template<>
struct DataType< ::adhoc_communication::SendTwistRequest>
{
  static const char* value()
  {
    return DataType< ::adhoc_communication::SendTwist >::value();
  }
  static const char* value(const ::adhoc_communication::SendTwistRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::adhoc_communication::SendTwistResponse> should match 
// service_traits::MD5Sum< ::adhoc_communication::SendTwist > 
template<>
struct MD5Sum< ::adhoc_communication::SendTwistResponse>
{
  static const char* value()
  {
    return MD5Sum< ::adhoc_communication::SendTwist >::value();
  }
  static const char* value(const ::adhoc_communication::SendTwistResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::adhoc_communication::SendTwistResponse> should match 
// service_traits::DataType< ::adhoc_communication::SendTwist > 
template<>
struct DataType< ::adhoc_communication::SendTwistResponse>
{
  static const char* value()
  {
    return DataType< ::adhoc_communication::SendTwist >::value();
  }
  static const char* value(const ::adhoc_communication::SendTwistResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ADHOC_COMMUNICATION_MESSAGE_SENDTWIST_H
