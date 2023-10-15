
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was DtkWidgetConfig.cmake.in                            ########

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

include(CMakeFindDependencyMacro)
find_dependency(DtkCore)
find_dependency(DtkGui)
find_dependency(Qt5Core)
find_dependency(Qt5Widgets)
find_dependency(Qt5DBus)
find_dependency(Qt5Network)
find_dependency(Qt5PrintSupport)
include(${CMAKE_CURRENT_LIST_DIR}/DtkWidgetTargets.cmake)
set(DtkWidget_LIBRARIES Dtk::Widget)
get_target_property(DtkWidget_INCLUDE_DIRS Dtk::Widget INTERFACE_INCLUDE_DIRECTORIES)
get_target_property(DtkWidget_LIBRARY_DIRS Dtk::Widget INTERFACE_LINK_DIRECTORIES)
set(DtkWidget_TOOL_DIRS "${PACKAGE_PREFIX_DIR}/lib/x86_64-linux-gnu/dtk5/DWidget/bin")
check_required_components(DtkWidget)

# Keep deprecated variables for compatibility
set(DTKWIDGET_INCLUDE_DIR ${DtkWidget_INCLUDE_DIRS})
set(DTKWIDGET_TOOL_DIR ${DtkWidget_TOOL_DIRS})
