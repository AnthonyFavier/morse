# Install script for directory: /home/ptsingaman/morse/src/morse/builder

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ptsingaman/.morse_build")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ptsingaman/.morse_build/lib/python3/dist-packages/morse/builder/__init__.py;/home/ptsingaman/.morse_build/lib/python3/dist-packages/morse/builder/abstractcomponent.py;/home/ptsingaman/.morse_build/lib/python3/dist-packages/morse/builder/actuators.py;/home/ptsingaman/.morse_build/lib/python3/dist-packages/morse/builder/blenderobjects.py;/home/ptsingaman/.morse_build/lib/python3/dist-packages/morse/builder/bpymorse.py;/home/ptsingaman/.morse_build/lib/python3/dist-packages/morse/builder/creator.py;/home/ptsingaman/.morse_build/lib/python3/dist-packages/morse/builder/data.py;/home/ptsingaman/.morse_build/lib/python3/dist-packages/morse/builder/environment.py;/home/ptsingaman/.morse_build/lib/python3/dist-packages/morse/builder/morsebuilder.py;/home/ptsingaman/.morse_build/lib/python3/dist-packages/morse/builder/sensors.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ptsingaman/.morse_build/lib/python3/dist-packages/morse/builder" TYPE FILE FILES
    "/home/ptsingaman/morse/src/morse/builder/__init__.py"
    "/home/ptsingaman/morse/src/morse/builder/abstractcomponent.py"
    "/home/ptsingaman/morse/src/morse/builder/actuators.py"
    "/home/ptsingaman/morse/src/morse/builder/blenderobjects.py"
    "/home/ptsingaman/morse/src/morse/builder/bpymorse.py"
    "/home/ptsingaman/morse/src/morse/builder/creator.py"
    "/home/ptsingaman/morse/src/morse/builder/data.py"
    "/home/ptsingaman/morse/src/morse/builder/environment.py"
    "/home/ptsingaman/morse/src/morse/builder/morsebuilder.py"
    "/home/ptsingaman/morse/src/morse/builder/sensors.py"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ptsingaman/.morse_build/lib/python3/dist-packages/morse/builder/robots")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ptsingaman/.morse_build/lib/python3/dist-packages/morse/builder" TYPE DIRECTORY FILES "/home/ptsingaman/morse/src/morse/builder/robots" REGEX ".*py.$" EXCLUDE)
endif()

