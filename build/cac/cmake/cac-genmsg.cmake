# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cac: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cac_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dhruv/catkin_ws/src/cac/srv/calc.srv" NAME_WE)
add_custom_target(_cac_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cac" "/home/dhruv/catkin_ws/src/cac/srv/calc.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(cac
  "/home/dhruv/catkin_ws/src/cac/srv/calc.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cac
)

### Generating Module File
_generate_module_cpp(cac
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cac
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cac_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cac_generate_messages cac_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/catkin_ws/src/cac/srv/calc.srv" NAME_WE)
add_dependencies(cac_generate_messages_cpp _cac_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cac_gencpp)
add_dependencies(cac_gencpp cac_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cac_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(cac
  "/home/dhruv/catkin_ws/src/cac/srv/calc.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cac
)

### Generating Module File
_generate_module_eus(cac
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cac
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cac_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cac_generate_messages cac_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/catkin_ws/src/cac/srv/calc.srv" NAME_WE)
add_dependencies(cac_generate_messages_eus _cac_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cac_geneus)
add_dependencies(cac_geneus cac_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cac_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(cac
  "/home/dhruv/catkin_ws/src/cac/srv/calc.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cac
)

### Generating Module File
_generate_module_lisp(cac
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cac
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cac_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cac_generate_messages cac_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/catkin_ws/src/cac/srv/calc.srv" NAME_WE)
add_dependencies(cac_generate_messages_lisp _cac_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cac_genlisp)
add_dependencies(cac_genlisp cac_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cac_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(cac
  "/home/dhruv/catkin_ws/src/cac/srv/calc.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cac
)

### Generating Module File
_generate_module_nodejs(cac
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cac
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cac_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cac_generate_messages cac_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/catkin_ws/src/cac/srv/calc.srv" NAME_WE)
add_dependencies(cac_generate_messages_nodejs _cac_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cac_gennodejs)
add_dependencies(cac_gennodejs cac_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cac_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(cac
  "/home/dhruv/catkin_ws/src/cac/srv/calc.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cac
)

### Generating Module File
_generate_module_py(cac
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cac
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cac_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cac_generate_messages cac_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/catkin_ws/src/cac/srv/calc.srv" NAME_WE)
add_dependencies(cac_generate_messages_py _cac_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cac_genpy)
add_dependencies(cac_genpy cac_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cac_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cac)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cac
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cac_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cac)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cac
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cac_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cac)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cac
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cac_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cac)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cac
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cac_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cac)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cac\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cac
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cac_generate_messages_py std_msgs_generate_messages_py)
endif()
