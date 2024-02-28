// Generated by gencpp from file calculator/calResponse.msg
// DO NOT EDIT!


#ifndef CALCULATOR_MESSAGE_CALRESPONSE_H
#define CALCULATOR_MESSAGE_CALRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace calculator
{
template <class ContainerAllocator>
struct calResponse_
{
  typedef calResponse_<ContainerAllocator> Type;

  calResponse_()
    : ans(0.0)  {
    }
  calResponse_(const ContainerAllocator& _alloc)
    : ans(0.0)  {
  (void)_alloc;
    }



   typedef double _ans_type;
  _ans_type ans;





  typedef boost::shared_ptr< ::calculator::calResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::calculator::calResponse_<ContainerAllocator> const> ConstPtr;

}; // struct calResponse_

typedef ::calculator::calResponse_<std::allocator<void> > calResponse;

typedef boost::shared_ptr< ::calculator::calResponse > calResponsePtr;
typedef boost::shared_ptr< ::calculator::calResponse const> calResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::calculator::calResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::calculator::calResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::calculator::calResponse_<ContainerAllocator1> & lhs, const ::calculator::calResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ans == rhs.ans;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::calculator::calResponse_<ContainerAllocator1> & lhs, const ::calculator::calResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace calculator

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::calculator::calResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::calculator::calResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::calculator::calResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::calculator::calResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::calculator::calResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::calculator::calResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::calculator::calResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "210e80c6e7683741c26a4a758a98e822";
  }

  static const char* value(const ::calculator::calResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x210e80c6e7683741ULL;
  static const uint64_t static_value2 = 0xc26a4a758a98e822ULL;
};

template<class ContainerAllocator>
struct DataType< ::calculator::calResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "calculator/calResponse";
  }

  static const char* value(const ::calculator::calResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::calculator::calResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 ans\n"
;
  }

  static const char* value(const ::calculator::calResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::calculator::calResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ans);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct calResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::calculator::calResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::calculator::calResponse_<ContainerAllocator>& v)
  {
    s << indent << "ans: ";
    Printer<double>::stream(s, indent + "  ", v.ans);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CALCULATOR_MESSAGE_CALRESPONSE_H