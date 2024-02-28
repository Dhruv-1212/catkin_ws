# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "exam: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iexam:/home/dhruv/catkin_ws/src/exam/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(exam_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dhruv/catkin_ws/src/exam/msg/myMess.msg" NAME_WE)
add_custom_target(_exam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exam" "/home/dhruv/catkin_ws/src/exam/msg/myMess.msg" ""
)

get_filename_component(_filename "/home/dhruv/catkin_ws/src/exam/srv/mySer.srv" NAME_WE)
add_custom_target(_exam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exam" "/home/dhruv/catkin_ws/src/exam/srv/mySer.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(exam
  "/home/dhruv/catkin_ws/src/exam/msg/myMess.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exam
)

### Generating Services
_generate_srv_cpp(exam
  "/home/dhruv/catkin_ws/src/exam/srv/mySer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exam
)

### Generating Module File
_generate_module_cpp(exam
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exam
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(exam_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(exam_generate_messages exam_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/catkin_ws/src/exam/msg/myMess.msg" NAME_WE)
add_dependencies(exam_generate_messages_cpp _exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/catkin_ws/src/exam/srv/mySer.srv" NAME_WE)
add_dependencies(exam_generate_messages_cpp _exam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exam_gencpp)
add_dependencies(exam_gencpp exam_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exam_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(exam
  "/home/dhruv/catkin_ws/src/exam/msg/myMess.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exam
)

### Generating Services
_generate_srv_eus(exam
  "/home/dhruv/catkin_ws/src/exam/srv/mySer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exam
)

### Generating Module File
_generate_module_eus(exam
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exam
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(exam_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(exam_generate_messages exam_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/catkin_ws/src/exam/msg/myMess.msg" NAME_WE)
add_dependencies(exam_generate_messages_eus _exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/catkin_ws/src/exam/srv/mySer.srv" NAME_WE)
add_dependencies(exam_generate_messages_eus _exam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exam_geneus)
add_dependencies(exam_geneus exam_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exam_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(exam
  "/home/dhruv/catkin_ws/src/exam/msg/myMess.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exam
)

### Generating Services
_generate_srv_lisp(exam
  "/home/dhruv/catkin_ws/src/exam/srv/mySer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exam
)

### Generating Module File
_generate_module_lisp(exam
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exam
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(exam_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(exam_generate_messages exam_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/catkin_ws/src/exam/msg/myMess.msg" NAME_WE)
add_dependencies(exam_generate_messages_lisp _exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/catkin_ws/src/exam/srv/mySer.srv" NAME_WE)
add_dependencies(exam_generate_messages_lisp _exam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exam_genlisp)
add_dependencies(exam_genlisp exam_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exam_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(exam
  "/home/dhruv/catkin_ws/src/exam/msg/myMess.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exam
)

### Generating Services
_generate_srv_nodejs(exam
  "/home/dhruv/catkin_ws/src/exam/srv/mySer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exam
)

### Generating Module File
_generate_module_nodejs(exam
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exam
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(exam_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(exam_generate_messages exam_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/catkin_ws/src/exam/msg/myMess.msg" NAME_WE)
add_dependencies(exam_generate_messages_nodejs _exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/catkin_ws/src/exam/srv/mySer.srv" NAME_WE)
add_dependencies(exam_generate_messages_nodejs _exam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exam_gennodejs)
add_dependencies(exam_gennodejs exam_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exam_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(exam
  "/home/dhruv/catkin_ws/src/exam/msg/myMess.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exam
)

### Generating Services
_generate_srv_py(exam
  "/home/dhruv/catkin_ws/src/exam/srv/mySer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exam
)

### Generating Module File
_generate_module_py(exam
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exam
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(exam_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(exam_generate_messages exam_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/catkin_ws/src/exam/msg/myMess.msg" NAME_WE)
add_dependencies(exam_generate_messages_py _exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/catkin_ws/src/exam/srv/mySer.srv" NAME_WE)
add_dependencies(exam_generate_messages_py _exam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exam_genpy)
add_dependencies(exam_genpy exam_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exam_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exam
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(exam_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exam
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(exam_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exam
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(exam_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exam
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(exam_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exam)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exam\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exam
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(exam_generate_messages_py std_msgs_generate_messages_py)
endif()
