// Generated by gencpp from file open_manipulator_msgs/GetJointPosition.msg
// DO NOT EDIT!


#ifndef OPEN_MANIPULATOR_MSGS_MESSAGE_GETJOINTPOSITION_H
#define OPEN_MANIPULATOR_MSGS_MESSAGE_GETJOINTPOSITION_H

#include <ros/service_traits.h>


#include <open_manipulator_msgs/GetJointPositionRequest.h>
#include <open_manipulator_msgs/GetJointPositionResponse.h>


namespace open_manipulator_msgs
{

struct GetJointPosition
{

typedef GetJointPositionRequest Request;
typedef GetJointPositionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetJointPosition
} // namespace open_manipulator_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::open_manipulator_msgs::GetJointPosition > {
  static const char* value()
  {
    return "8d1ed85590e532631c111b78538ac282";
  }

  static const char* value(const ::open_manipulator_msgs::GetJointPosition&) { return value(); }
};

template<>
struct DataType< ::open_manipulator_msgs::GetJointPosition > {
  static const char* value()
  {
    return "open_manipulator_msgs/GetJointPosition";
  }

  static const char* value(const ::open_manipulator_msgs::GetJointPosition&) { return value(); }
};


// service_traits::MD5Sum< ::open_manipulator_msgs::GetJointPositionRequest> should match
// service_traits::MD5Sum< ::open_manipulator_msgs::GetJointPosition >
template<>
struct MD5Sum< ::open_manipulator_msgs::GetJointPositionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::open_manipulator_msgs::GetJointPosition >::value();
  }
  static const char* value(const ::open_manipulator_msgs::GetJointPositionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::open_manipulator_msgs::GetJointPositionRequest> should match
// service_traits::DataType< ::open_manipulator_msgs::GetJointPosition >
template<>
struct DataType< ::open_manipulator_msgs::GetJointPositionRequest>
{
  static const char* value()
  {
    return DataType< ::open_manipulator_msgs::GetJointPosition >::value();
  }
  static const char* value(const ::open_manipulator_msgs::GetJointPositionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::open_manipulator_msgs::GetJointPositionResponse> should match
// service_traits::MD5Sum< ::open_manipulator_msgs::GetJointPosition >
template<>
struct MD5Sum< ::open_manipulator_msgs::GetJointPositionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::open_manipulator_msgs::GetJointPosition >::value();
  }
  static const char* value(const ::open_manipulator_msgs::GetJointPositionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::open_manipulator_msgs::GetJointPositionResponse> should match
// service_traits::DataType< ::open_manipulator_msgs::GetJointPosition >
template<>
struct DataType< ::open_manipulator_msgs::GetJointPositionResponse>
{
  static const char* value()
  {
    return DataType< ::open_manipulator_msgs::GetJointPosition >::value();
  }
  static const char* value(const ::open_manipulator_msgs::GetJointPositionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // OPEN_MANIPULATOR_MSGS_MESSAGE_GETJOINTPOSITION_H
