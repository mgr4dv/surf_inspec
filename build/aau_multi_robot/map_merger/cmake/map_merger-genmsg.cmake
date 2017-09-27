# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "map_merger: 0 messages, 2 services")

set(MSG_I_FLAGS "-Iadhoc_communication:/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Inav_msgs:/opt/ros/indigo/share/nav_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(map_merger_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/administrator/catkin_ws/src/aau_multi_robot/map_merger/srv/LogMaps.srv" NAME_WE)
add_custom_target(_map_merger_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "map_merger" "/home/administrator/catkin_ws/src/aau_multi_robot/map_merger/srv/LogMaps.srv" ""
)

get_filename_component(_filename "/home/administrator/catkin_ws/src/aau_multi_robot/map_merger/srv/TransformPoint.srv" NAME_WE)
add_custom_target(_map_merger_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "map_merger" "/home/administrator/catkin_ws/src/aau_multi_robot/map_merger/srv/TransformPoint.srv" "adhoc_communication/MmPoint"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(map_merger
  "/home/administrator/catkin_ws/src/aau_multi_robot/map_merger/srv/LogMaps.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/map_merger
)
_generate_srv_cpp(map_merger
  "/home/administrator/catkin_ws/src/aau_multi_robot/map_merger/srv/TransformPoint.srv"
  "${MSG_I_FLAGS}"
  "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/msg/MmPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/map_merger
)

### Generating Module File
_generate_module_cpp(map_merger
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/map_merger
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(map_merger_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(map_merger_generate_messages map_merger_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/administrator/catkin_ws/src/aau_multi_robot/map_merger/srv/LogMaps.srv" NAME_WE)
add_dependencies(map_merger_generate_messages_cpp _map_merger_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/administrator/catkin_ws/src/aau_multi_robot/map_merger/srv/TransformPoint.srv" NAME_WE)
add_dependencies(map_merger_generate_messages_cpp _map_merger_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(map_merger_gencpp)
add_dependencies(map_merger_gencpp map_merger_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS map_merger_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(map_merger
  "/home/administrator/catkin_ws/src/aau_multi_robot/map_merger/srv/LogMaps.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/map_merger
)
_generate_srv_lisp(map_merger
  "/home/administrator/catkin_ws/src/aau_multi_robot/map_merger/srv/TransformPoint.srv"
  "${MSG_I_FLAGS}"
  "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/msg/MmPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/map_merger
)

### Generating Module File
_generate_module_lisp(map_merger
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/map_merger
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(map_merger_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(map_merger_generate_messages map_merger_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/administrator/catkin_ws/src/aau_multi_robot/map_merger/srv/LogMaps.srv" NAME_WE)
add_dependencies(map_merger_generate_messages_lisp _map_merger_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/administrator/catkin_ws/src/aau_multi_robot/map_merger/srv/TransformPoint.srv" NAME_WE)
add_dependencies(map_merger_generate_messages_lisp _map_merger_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(map_merger_genlisp)
add_dependencies(map_merger_genlisp map_merger_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS map_merger_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(map_merger
  "/home/administrator/catkin_ws/src/aau_multi_robot/map_merger/srv/LogMaps.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/map_merger
)
_generate_srv_py(map_merger
  "/home/administrator/catkin_ws/src/aau_multi_robot/map_merger/srv/TransformPoint.srv"
  "${MSG_I_FLAGS}"
  "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/msg/MmPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/map_merger
)

### Generating Module File
_generate_module_py(map_merger
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/map_merger
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(map_merger_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(map_merger_generate_messages map_merger_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/administrator/catkin_ws/src/aau_multi_robot/map_merger/srv/LogMaps.srv" NAME_WE)
add_dependencies(map_merger_generate_messages_py _map_merger_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/administrator/catkin_ws/src/aau_multi_robot/map_merger/srv/TransformPoint.srv" NAME_WE)
add_dependencies(map_merger_generate_messages_py _map_merger_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(map_merger_genpy)
add_dependencies(map_merger_genpy map_merger_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS map_merger_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/map_merger)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/map_merger
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(map_merger_generate_messages_cpp adhoc_communication_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/map_merger)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/map_merger
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(map_merger_generate_messages_lisp adhoc_communication_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/map_merger)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/map_merger\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/map_merger
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(map_merger_generate_messages_py adhoc_communication_generate_messages_py)
