
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was DtkCoreConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

if(UNIX AND NOT APPLE)
  set(LINUX TRUE)
endif()
include(CMakeFindDependencyMacro)
find_dependency(Qt5Core)
find_dependency(Qt5Xml)

if (LINUX)
    find_dependency(Qt5DBus) 
endif()
find_dependency(DtkDConfig)
include(${CMAKE_CURRENT_LIST_DIR}/DtkCoreTargets.cmake)

set(DtkCore_LIBRARIES Dtk::Core)
get_target_property(DtkCore_INCLUDE_DIRS Dtk::Core INTERFACE_INCLUDE_DIRECTORIES)
get_target_property(DtkCore_LIBRARY_DIRS Dtk::Core INTERFACE_LINK_DIRECTORIES)
set(DtkCore_TOOL_DIRS "${PACKAGE_PREFIX_DIR}/libexec/dtk5/DCore/bin")
check_required_components(DtkCore)

# Keep deprecated variables for compatibility
set(DTKCORE_INCLUDE_DIRS ${DtkCore_INCLUDE_DIRS})
set(DTKCORE_TOOL_DIRS ${DtkCore_TOOL_DIRS})

add_definitions(-DQT_MESSAGELOGCONTEXT)
