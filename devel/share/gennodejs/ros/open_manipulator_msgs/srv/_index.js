
"use strict";

let GetJointPosition = require('./GetJointPosition.js')
let SetJointPosition = require('./SetJointPosition.js')
let SetKinematicsPose = require('./SetKinematicsPose.js')
let GetKinematicsPose = require('./GetKinematicsPose.js')
let SetDrawingTrajectory = require('./SetDrawingTrajectory.js')
let SetActuatorState = require('./SetActuatorState.js')

module.exports = {
  GetJointPosition: GetJointPosition,
  SetJointPosition: SetJointPosition,
  SetKinematicsPose: SetKinematicsPose,
  GetKinematicsPose: GetKinematicsPose,
  SetDrawingTrajectory: SetDrawingTrajectory,
  SetActuatorState: SetActuatorState,
};
