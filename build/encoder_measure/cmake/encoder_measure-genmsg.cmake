# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "encoder_measure: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iencoder_measure:/home/administrator/catkin_ws/src/encoder_measure/msg;-Ijackal_msgs:/opt/ros/indigo/share/jackal_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(encoder_measure_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/administrator/catkin_ws/src/encoder_measure/msg/Encoder.msg" NAME_WE)
add_custom_target(_encoder_measure_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "encoder_measure" "/home/administrator/catkin_ws/src/encoder_measure/msg/Encoder.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(encoder_measure
  "/home/administrator/catkin_ws/src/encoder_measure/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/encoder_measure
)

### Generating Services

### Generating Module File
_generate_module_cpp(encoder_measure
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/encoder_measure
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(encoder_measure_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(encoder_measure_generate_messages encoder_measure_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/administrator/catkin_ws/src/encoder_measure/msg/Encoder.msg" NAME_WE)
add_dependencies(encoder_measure_generate_messages_cpp _encoder_measure_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(encoder_measure_gencpp)
add_dependencies(encoder_measure_gencpp encoder_measure_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS encoder_measure_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(encoder_measure
  "/home/administrator/catkin_ws/src/encoder_measure/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/encoder_measure
)

### Generating Services

### Generating Module File
_generate_module_lisp(encoder_measure
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/encoder_measure
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(encoder_measure_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(encoder_measure_generate_messages encoder_measure_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/administrator/catkin_ws/src/encoder_measure/msg/Encoder.msg" NAME_WE)
add_dependencies(encoder_measure_generate_messages_lisp _encoder_measure_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(encoder_measure_genlisp)
add_dependencies(encoder_measure_genlisp encoder_measure_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS encoder_measure_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(encoder_measure
  "/home/administrator/catkin_ws/src/encoder_measure/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/encoder_measure
)

### Generating Services

### Generating Module File
_generate_module_py(encoder_measure
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/encoder_measure
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(encoder_measure_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(encoder_measure_generate_messages encoder_measure_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/administrator/catkin_ws/src/encoder_measure/msg/Encoder.msg" NAME_WE)
add_dependencies(encoder_measure_generate_messages_py _encoder_measure_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(encoder_measure_genpy)
add_dependencies(encoder_measure_genpy encoder_measure_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS encoder_measure_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/encoder_measure)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/encoder_measure
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(encoder_measure_generate_messages_cpp jackal_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/encoder_measure)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/encoder_measure
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(encoder_measure_generate_messages_lisp jackal_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/encoder_measure)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/encoder_measure\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/encoder_measure
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(encoder_measure_generate_messages_py jackal_msgs_generate_messages_py)
