# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "calculator: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(calculator_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dhruv/catkin_ws/src/calculator/srv/cal.srv" NAME_WE)
add_custom_target(_calculator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "calculator" "/home/dhruv/catkin_ws/src/calculator/srv/cal.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(calculator
  "/home/dhruv/catkin_ws/src/calculator/srv/cal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calculator
)

### Generating Module File
_generate_module_cpp(calculator
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calculator
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(calculator_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(calculator_generate_messages calculator_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/catkin_ws/src/calculator/srv/cal.srv" NAME_WE)
add_dependencies(calculator_generate_messages_cpp _calculator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(calculator_gencpp)
add_dependencies(calculator_gencpp calculator_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS calculator_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(calculator
  "/home/dhruv/catkin_ws/src/calculator/srv/cal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calculator
)

### Generating Module File
_generate_module_eus(calculator
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calculator
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(calculator_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(calculator_generate_messages calculator_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/catkin_ws/src/calculator/srv/cal.srv" NAME_WE)
add_dependencies(calculator_generate_messages_eus _calculator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(calculator_geneus)
add_dependencies(calculator_geneus calculator_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS calculator_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(calculator
  "/home/dhruv/catkin_ws/src/calculator/srv/cal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calculator
)

### Generating Module File
_generate_module_lisp(calculator
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calculator
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(calculator_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(calculator_generate_messages calculator_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/catkin_ws/src/calculator/srv/cal.srv" NAME_WE)
add_dependencies(calculator_generate_messages_lisp _calculator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(calculator_genlisp)
add_dependencies(calculator_genlisp calculator_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS calculator_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(calculator
  "/home/dhruv/catkin_ws/src/calculator/srv/cal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calculator
)

### Generating Module File
_generate_module_nodejs(calculator
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calculator
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(calculator_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(calculator_generate_messages calculator_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/catkin_ws/src/calculator/srv/cal.srv" NAME_WE)
add_dependencies(calculator_generate_messages_nodejs _calculator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(calculator_gennodejs)
add_dependencies(calculator_gennodejs calculator_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS calculator_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(calculator
  "/home/dhruv/catkin_ws/src/calculator/srv/cal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calculator
)

### Generating Module File
_generate_module_py(calculator
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calculator
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(calculator_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(calculator_generate_messages calculator_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/catkin_ws/src/calculator/srv/cal.srv" NAME_WE)
add_dependencies(calculator_generate_messages_py _calculator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(calculator_genpy)
add_dependencies(calculator_genpy calculator_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS calculator_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calculator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calculator
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(calculator_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calculator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calculator
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(calculator_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calculator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calculator
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(calculator_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calculator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calculator
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(calculator_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calculator)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calculator\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calculator
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(calculator_generate_messages_py std_msgs_generate_messages_py)
endif()
