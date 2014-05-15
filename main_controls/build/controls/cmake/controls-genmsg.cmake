# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "controls: 1 messages, 0 services")

set(MSG_I_FLAGS "-Icontrols:/home/debian/controls_on_beagle_bone/main_controls/src/controls/msg;-Istd_msgs:/home/debian/ros_catkin_ws/install_isolated/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(controls_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/debian/controls_on_beagle_bone/main_controls/src/controls/msg/encoder_msg.msg" NAME_WE)
add_custom_target(_controls_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "controls" "/home/debian/controls_on_beagle_bone/main_controls/src/controls/msg/encoder_msg.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(controls
  "/home/debian/controls_on_beagle_bone/main_controls/src/controls/msg/encoder_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/controls
)

### Generating Services

### Generating Module File
_generate_module_cpp(controls
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/controls
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(controls_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(controls_generate_messages controls_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/debian/controls_on_beagle_bone/main_controls/src/controls/msg/encoder_msg.msg" NAME_WE)
add_dependencies(controls_generate_messages_cpp _controls_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(controls_gencpp)
add_dependencies(controls_gencpp controls_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS controls_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(controls
  "/home/debian/controls_on_beagle_bone/main_controls/src/controls/msg/encoder_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/controls
)

### Generating Services

### Generating Module File
_generate_module_lisp(controls
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/controls
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(controls_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(controls_generate_messages controls_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/debian/controls_on_beagle_bone/main_controls/src/controls/msg/encoder_msg.msg" NAME_WE)
add_dependencies(controls_generate_messages_lisp _controls_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(controls_genlisp)
add_dependencies(controls_genlisp controls_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS controls_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(controls
  "/home/debian/controls_on_beagle_bone/main_controls/src/controls/msg/encoder_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/controls
)

### Generating Services

### Generating Module File
_generate_module_py(controls
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/controls
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(controls_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(controls_generate_messages controls_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/debian/controls_on_beagle_bone/main_controls/src/controls/msg/encoder_msg.msg" NAME_WE)
add_dependencies(controls_generate_messages_py _controls_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(controls_genpy)
add_dependencies(controls_genpy controls_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS controls_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/controls)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/controls
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(controls_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/controls)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/controls
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(controls_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/controls)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/controls\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/controls
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(controls_generate_messages_py std_msgs_generate_messages_py)
