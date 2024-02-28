// Generated by gencpp from file assign2/ourMsg.msg
// DO NOT EDIT!


#ifndef ASSIGN2_MESSAGE_OURMSG_H
#define ASSIGN2_MESSAGE_OURMSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace assign2
{
template <class ContainerAllocator>
struct ourMsg_
{
  typedef ourMsg_<ContainerAllocator> Type;

  ourMsg_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , fi(0.0)  {
    }
  ourMsg_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , fi(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _z_type;
  _z_type z;

   typedef float _fi_type;
  _fi_type fi;





  typedef boost::shared_ptr< ::assign2::ourMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::assign2::ourMsg_<ContainerAllocator> const> ConstPtr;

}; // struct ourMsg_

typedef ::assign2::ourMsg_<std::allocator<void> > ourMsg;

typedef boost::shared_ptr< ::assign2::ourMsg > ourMsgPtr;
typedef boost::shared_ptr< ::assign2::ourMsg const> ourMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::assign2::ourMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::assign2::ourMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::assign2::ourMsg_<ContainerAllocator1> & lhs, const ::assign2::ourMsg_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.fi == rhs.fi;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::assign2::ourMsg_<ContainerAllocator1> & lhs, const ::assign2::ourMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace assign2

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::assign2::ourMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::assign2::ourMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assign2::ourMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assign2::ourMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assign2::ourMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assign2::ourMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::assign2::ourMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e7f9bc2b116f9a0efd4cf9e3a0c5a2a0";
  }

  static const char* value(const ::assign2::ourMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe7f9bc2b116f9a0eULL;
  static const uint64_t static_value2 = 0xfd4cf9e3a0c5a2a0ULL;
};

template<class ContainerAllocator>
struct DataType< ::assign2::ourMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "assign2/ourMsg";
  }

  static const char* value(const ::assign2::ourMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::assign2::ourMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n"
"float32 y\n"
"float32 z\n"
"float32 fi\n"
;
  }

  static const char* value(const ::assign2::ourMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::assign2::ourMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.fi);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ourMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::assign2::ourMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::assign2::ourMsg_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<float>::stream(s, indent + "  ", v.z);
    s << indent << "fi: ";
    Printer<float>::stream(s, indent + "  ", v.fi);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ASSIGN2_MESSAGE_OURMSG_H
