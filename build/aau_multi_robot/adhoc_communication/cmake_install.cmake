# Install script for directory: /home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/administrator/catkin_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adhoc_communication/msg" TYPE FILE FILES
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/msg/ExpAuction.msg"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/msg/ExpAuctionElement.msg"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/msg/ExpFrontierElement.msg"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/msg/MmControl.msg"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/msg/MmMapUpdate.msg"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/msg/MmRobotPosition.msg"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/msg/ExpCluster.msg"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/msg/ExpClusterElement.msg"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/msg/ExpFrontier.msg"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/msg/MmListOfPoints.msg"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/msg/MmPoint.msg"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/msg/RecvString.msg"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/msg/CMgrDimensions.msg"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/msg/CMgrRobotUpdate.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adhoc_communication/srv" TYPE FILE FILES
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/srv/ChangeMCMembership.srv"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/srv/SendExpAuction.srv"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/srv/SendExpFrontier.srv"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/srv/SendMmMapUpdate.srv"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/srv/SendMmRobotPosition.srv"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/srv/SendQuaternion.srv"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/srv/GetNeighbors.srv"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/srv/SendExpCluster.srv"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/srv/SendMmControl.srv"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/srv/SendMmPoint.srv"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/srv/SendOccupancyGrid.srv"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/srv/SendString.srv"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/srv/GetGroupState.srv"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/srv/SendTwist.srv"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/srv/SendCMgrRobotUpdate.srv"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/srv/ShutDown.srv"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/srv/BroadcastCMgrRobotUpdate.srv"
    "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/srv/BroadcastString.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adhoc_communication/cmake" TYPE FILE FILES "/home/administrator/catkin_ws/build/aau_multi_robot/adhoc_communication/catkin_generated/installspace/adhoc_communication-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/administrator/catkin_ws/devel/include/adhoc_communication")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/administrator/catkin_ws/devel/share/common-lisp/ros/adhoc_communication")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/administrator/catkin_ws/devel/lib/python2.7/dist-packages/adhoc_communication")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/administrator/catkin_ws/devel/lib/python2.7/dist-packages/adhoc_communication")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/administrator/catkin_ws/build/aau_multi_robot/adhoc_communication/catkin_generated/installspace/adhoc_communication.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adhoc_communication/cmake" TYPE FILE FILES "/home/administrator/catkin_ws/build/aau_multi_robot/adhoc_communication/catkin_generated/installspace/adhoc_communication-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adhoc_communication/cmake" TYPE FILE FILES
    "/home/administrator/catkin_ws/build/aau_multi_robot/adhoc_communication/catkin_generated/installspace/adhoc_communicationConfig.cmake"
    "/home/administrator/catkin_ws/build/aau_multi_robot/adhoc_communication/catkin_generated/installspace/adhoc_communicationConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adhoc_communication" TYPE FILE FILES "/home/administrator/catkin_ws/src/aau_multi_robot/adhoc_communication/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

