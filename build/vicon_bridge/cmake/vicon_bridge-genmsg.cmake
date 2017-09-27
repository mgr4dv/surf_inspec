# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vicon_bridge: 3 messages, 2 services")

set(MSG_I_FLAGS "-Ivicon_bridge:/home/administrator/catkin_ws/src/vicon_bridge/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vicon_bridge_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/administrator/catkin_ws/src/vicon_bridge/srv/viconCalibrateSegment.srv" NAME_WE)
add_custom_target(_vicon_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vicon_bridge" "/home/administrator/catkin_ws/src/vicon_bridge/srv/viconCalibrateSegment.srv" "geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/administrator/catkin_ws/src/vicon_bridge/srv/viconGrabPose.srv" NAME_WE)
add_custom_target(_vicon_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vicon_bridge" "/home/administrator/catkin_ws/src/vicon_bridge/srv/viconGrabPose.srv" "geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/administrator/catkin_ws/src/vicon_bridge/msg/Markers.msg" NAME_WE)
add_custom_target(_vicon_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vicon_bridge" "/home/administrator/catkin_ws/src/vicon_bridge/msg/Markers.msg" "vicon_bridge/Marker:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/administrator/catkin_ws/src/vicon_bridge/msg/Marker.msg" NAME_WE)
add_custom_target(_vicon_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vicon_bridge" "/home/administrator/catkin_ws/src/vicon_bridge/msg/Marker.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/administrator/catkin_ws/src/vicon_bridge/msg/TfDistortInfo.msg" NAME_WE)
add_custom_target(_vicon_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vicon_bridge" "/home/administrator/catkin_ws/src/vicon_bridge/msg/TfDistortInfo.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vicon_bridge
  "/home/administrator/catkin_ws/src/vicon_bridge/msg/Markers.msg"
  "${MSG_I_FLAGS}"
  "/home/administrator/catkin_ws/src/vicon_bridge/msg/Marker.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vicon_bridge
)
_generate_msg_cpp(vicon_bridge
  "/home/administrator/catkin_ws/src/vicon_bridge/msg/TfDistortInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vicon_bridge
)
_generate_msg_cpp(vicon_bridge
  "/home/administrator/catkin_ws/src/vicon_bridge/msg/Marker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vicon_bridge
)

### Generating Services
_generate_srv_cpp(vicon_bridge
  "/home/administrator/catkin_ws/src/vicon_bridge/srv/viconGrabPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vicon_bridge
)
_generate_srv_cpp(vicon_bridge
  "/home/administrator/catkin_ws/src/vicon_bridge/srv/viconCalibrateSegment.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vicon_bridge
)

### Generating Module File
_generate_module_cpp(vicon_bridge
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vicon_bridge
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vicon_bridge_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vicon_bridge_generate_messages vicon_bridge_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/administrator/catkin_ws/src/vicon_bridge/srv/viconCalibrateSegment.srv" NAME_WE)
add_dependencies(vicon_bridge_generate_messages_cpp _vicon_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/administrator/catkin_ws/src/vicon_bridge/srv/viconGrabPose.srv" NAME_WE)
add_dependencies(vicon_bridge_generate_messages_cpp _vicon_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/administrator/catkin_ws/src/vicon_bridge/msg/Markers.msg" NAME_WE)
add_dependencies(vicon_bridge_generate_messages_cpp _vicon_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/administrator/catkin_ws/src/vicon_bridge/msg/Marker.msg" NAME_WE)
add_dependencies(vicon_bridge_generate_messages_cpp _vicon_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/administrator/catkin_ws/src/vicon_bridge/msg/TfDistortInfo.msg" NAME_WE)
add_dependencies(vicon_bridge_generate_messages_cpp _vicon_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vicon_bridge_gencpp)
add_dependencies(vicon_bridge_gencpp vicon_bridge_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vicon_bridge_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vicon_bridge
  "/home/administrator/catkin_ws/src/vicon_bridge/msg/Markers.msg"
  "${MSG_I_FLAGS}"
  "/home/administrator/catkin_ws/src/vicon_bridge/msg/Marker.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vicon_bridge
)
_generate_msg_lisp(vicon_bridge
  "/home/administrator/catkin_ws/src/vicon_bridge/msg/TfDistortInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vicon_bridge
)
_generate_msg_lisp(vicon_bridge
  "/home/administrator/catkin_ws/src/vicon_bridge/msg/Marker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vicon_bridge
)

### Generating Services
_generate_srv_lisp(vicon_bridge
  "/home/administrator/catkin_ws/src/vicon_bridge/srv/viconGrabPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vicon_bridge
)
_generate_srv_lisp(vicon_bridge
  "/home/administrator/catkin_ws/src/vicon_bridge/srv/viconCalibrateSegment.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vicon_bridge
)

### Generating Module File
_generate_module_lisp(vicon_bridge
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vicon_bridge
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vicon_bridge_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vicon_bridge_generate_messages vicon_bridge_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/administrator/catkin_ws/src/vicon_bridge/srv/viconCalibrateSegment.srv" NAME_WE)
add_dependencies(vicon_bridge_generate_messages_lisp _vicon_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/administrator/catkin_ws/src/vicon_bridge/srv/viconGrabPose.srv" NAME_WE)
add_dependencies(vicon_bridge_generate_messages_lisp _vicon_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/administrator/catkin_ws/src/vicon_bridge/msg/Markers.msg" NAME_WE)
add_dependencies(vicon_bridge_generate_messages_lisp _vicon_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/administrator/catkin_ws/src/vicon_bridge/msg/Marker.msg" NAME_WE)
add_dependencies(vicon_bridge_generate_messages_lisp _vicon_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/administrator/catkin_ws/src/vicon_bridge/msg/TfDistortInfo.msg" NAME_WE)
add_dependencies(vicon_bridge_generate_messages_lisp _vicon_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vicon_bridge_genlisp)
add_dependencies(vicon_bridge_genlisp vicon_bridge_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vicon_bridge_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vicon_bridge
  "/home/administrator/catkin_ws/src/vicon_bridge/msg/Markers.msg"
  "${MSG_I_FLAGS}"
  "/home/administrator/catkin_ws/src/vicon_bridge/msg/Marker.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon_bridge
)
_generate_msg_py(vicon_bridge
  "/home/administrator/catkin_ws/src/vicon_bridge/msg/TfDistortInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon_bridge
)
_generate_msg_py(vicon_bridge
  "/home/administrator/catkin_ws/src/vicon_bridge/msg/Marker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon_bridge
)

### Generating Services
_generate_srv_py(vicon_bridge
  "/home/administrator/catkin_ws/src/vicon_bridge/srv/viconGrabPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon_bridge
)
_generate_srv_py(vicon_bridge
  "/home/administrator/catkin_ws/src/vicon_bridge/srv/viconCalibrateSegment.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon_bridge
)

### Generating Module File
_generate_module_py(vicon_bridge
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon_bridge
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vicon_bridge_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vicon_bridge_generate_messages vicon_bridge_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/administrator/catkin_ws/src/vicon_bridge/srv/viconCalibrateSegment.srv" NAME_WE)
add_dependencies(vicon_bridge_generate_messages_py _vicon_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/administrator/catkin_ws/src/vicon_bridge/srv/viconGrabPose.srv" NAME_WE)
add_dependencies(vicon_bridge_generate_messages_py _vicon_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/administrator/catkin_ws/src/vicon_bridge/msg/Markers.msg" NAME_WE)
add_dependencies(vicon_bridge_generate_messages_py _vicon_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/administrator/catkin_ws/src/vicon_bridge/msg/Marker.msg" NAME_WE)
add_dependencies(vicon_bridge_generate_messages_py _vicon_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/administrator/catkin_ws/src/vicon_bridge/msg/TfDistortInfo.msg" NAME_WE)
add_dependencies(vicon_bridge_generate_messages_py _vicon_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vicon_bridge_genpy)
add_dependencies(vicon_bridge_genpy vicon_bridge_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vicon_bridge_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vicon_bridge)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vicon_bridge
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(vicon_bridge_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vicon_bridge)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vicon_bridge
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(vicon_bridge_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon_bridge)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon_bridge\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vicon_bridge
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(vicon_bridge_generate_messages_py geometry_msgs_generate_messages_py)
