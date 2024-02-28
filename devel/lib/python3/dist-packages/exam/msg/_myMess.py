# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from exam/myMess.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class myMess(genpy.Message):
  _md5sum = "a7ba6d783e8cdda9b7155099d049aa3a"
  _type = "exam/myMess"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float64 angle1
float64 angle2
float64 angle3
float64 angle4
float64 time

"""
  __slots__ = ['angle1','angle2','angle3','angle4','time']
  _slot_types = ['float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       angle1,angle2,angle3,angle4,time

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(myMess, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.angle1 is None:
        self.angle1 = 0.
      if self.angle2 is None:
        self.angle2 = 0.
      if self.angle3 is None:
        self.angle3 = 0.
      if self.angle4 is None:
        self.angle4 = 0.
      if self.time is None:
        self.time = 0.
    else:
      self.angle1 = 0.
      self.angle2 = 0.
      self.angle3 = 0.
      self.angle4 = 0.
      self.time = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_5d().pack(_x.angle1, _x.angle2, _x.angle3, _x.angle4, _x.time))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 40
      (_x.angle1, _x.angle2, _x.angle3, _x.angle4, _x.time,) = _get_struct_5d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_5d().pack(_x.angle1, _x.angle2, _x.angle3, _x.angle4, _x.time))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 40
      (_x.angle1, _x.angle2, _x.angle3, _x.angle4, _x.time,) = _get_struct_5d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_5d = None
def _get_struct_5d():
    global _struct_5d
    if _struct_5d is None:
        _struct_5d = struct.Struct("<5d")
    return _struct_5d