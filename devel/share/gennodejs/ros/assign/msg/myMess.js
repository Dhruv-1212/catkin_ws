// Auto-generated. Do not edit!

// (in-package assign.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class myMess {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angle1 = null;
      this.angle2 = null;
      this.angle3 = null;
      this.angle4 = null;
    }
    else {
      if (initObj.hasOwnProperty('angle1')) {
        this.angle1 = initObj.angle1
      }
      else {
        this.angle1 = 0.0;
      }
      if (initObj.hasOwnProperty('angle2')) {
        this.angle2 = initObj.angle2
      }
      else {
        this.angle2 = 0.0;
      }
      if (initObj.hasOwnProperty('angle3')) {
        this.angle3 = initObj.angle3
      }
      else {
        this.angle3 = 0.0;
      }
      if (initObj.hasOwnProperty('angle4')) {
        this.angle4 = initObj.angle4
      }
      else {
        this.angle4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type myMess
    // Serialize message field [angle1]
    bufferOffset = _serializer.float32(obj.angle1, buffer, bufferOffset);
    // Serialize message field [angle2]
    bufferOffset = _serializer.float32(obj.angle2, buffer, bufferOffset);
    // Serialize message field [angle3]
    bufferOffset = _serializer.float32(obj.angle3, buffer, bufferOffset);
    // Serialize message field [angle4]
    bufferOffset = _serializer.float32(obj.angle4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type myMess
    let len;
    let data = new myMess(null);
    // Deserialize message field [angle1]
    data.angle1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle2]
    data.angle2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle3]
    data.angle3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle4]
    data.angle4 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'assign/myMess';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6dbee5393cf7cdd1b23eb5beb5d9c6de';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 angle1
    float32 angle2
    float32 angle3
    float32 angle4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new myMess(null);
    if (msg.angle1 !== undefined) {
      resolved.angle1 = msg.angle1;
    }
    else {
      resolved.angle1 = 0.0
    }

    if (msg.angle2 !== undefined) {
      resolved.angle2 = msg.angle2;
    }
    else {
      resolved.angle2 = 0.0
    }

    if (msg.angle3 !== undefined) {
      resolved.angle3 = msg.angle3;
    }
    else {
      resolved.angle3 = 0.0
    }

    if (msg.angle4 !== undefined) {
      resolved.angle4 = msg.angle4;
    }
    else {
      resolved.angle4 = 0.0
    }

    return resolved;
    }
};

module.exports = myMess;
