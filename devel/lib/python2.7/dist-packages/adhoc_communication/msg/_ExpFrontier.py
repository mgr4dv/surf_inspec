# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from adhoc_communication/ExpFrontier.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import adhoc_communication.msg

class ExpFrontier(genpy.Message):
  _md5sum = "a022dc7f2d36765e856b2878d8a5476f"
  _type = "adhoc_communication/ExpFrontier"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """ExpFrontierElement[] frontier_element

================================================================================
MSG: adhoc_communication/ExpFrontierElement
int64 id
string detected_by_robot_str
int64 detected_by_robot
float64 robot_home_position_x
float64 robot_home_position_y
float64 x_coordinate
float64 y_coordinate
"""
  __slots__ = ['frontier_element']
  _slot_types = ['adhoc_communication/ExpFrontierElement[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       frontier_element

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ExpFrontier, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.frontier_element is None:
        self.frontier_element = []
    else:
      self.frontier_element = []

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
      length = len(self.frontier_element)
      buff.write(_struct_I.pack(length))
      for val1 in self.frontier_element:
        buff.write(_struct_q.pack(val1.id))
        _x = val1.detected_by_robot_str
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_struct_q4d.pack(_x.detected_by_robot, _x.robot_home_position_x, _x.robot_home_position_y, _x.x_coordinate, _x.y_coordinate))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.frontier_element is None:
        self.frontier_element = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.frontier_element = []
      for i in range(0, length):
        val1 = adhoc_communication.msg.ExpFrontierElement()
        start = end
        end += 8
        (val1.id,) = _struct_q.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.detected_by_robot_str = str[start:end].decode('utf-8')
        else:
          val1.detected_by_robot_str = str[start:end]
        _x = val1
        start = end
        end += 40
        (_x.detected_by_robot, _x.robot_home_position_x, _x.robot_home_position_y, _x.x_coordinate, _x.y_coordinate,) = _struct_q4d.unpack(str[start:end])
        self.frontier_element.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.frontier_element)
      buff.write(_struct_I.pack(length))
      for val1 in self.frontier_element:
        buff.write(_struct_q.pack(val1.id))
        _x = val1.detected_by_robot_str
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_struct_q4d.pack(_x.detected_by_robot, _x.robot_home_position_x, _x.robot_home_position_y, _x.x_coordinate, _x.y_coordinate))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.frontier_element is None:
        self.frontier_element = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.frontier_element = []
      for i in range(0, length):
        val1 = adhoc_communication.msg.ExpFrontierElement()
        start = end
        end += 8
        (val1.id,) = _struct_q.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.detected_by_robot_str = str[start:end].decode('utf-8')
        else:
          val1.detected_by_robot_str = str[start:end]
        _x = val1
        start = end
        end += 40
        (_x.detected_by_robot, _x.robot_home_position_x, _x.robot_home_position_y, _x.x_coordinate, _x.y_coordinate,) = _struct_q4d.unpack(str[start:end])
        self.frontier_element.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_q = struct.Struct("<q")
_struct_q4d = struct.Struct("<q4d")
