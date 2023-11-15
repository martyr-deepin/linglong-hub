
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was DtkGuiConfig.cmake.in                            ########

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
find_dependency(Qt5Network)
find_dependency(Qt5Gui)

include(${CMAKE_CURRENT_LIST_DIR}/DtkGuiTargets.cmake)

set(DtkGui_LIBRARIES Dtk::Gui)
get_target_property(DtkGui_INCLUDE_DIRS Dtk::Gui INTERFACE_INCLUDE_DIRECTORIES)
get_target_property(DtkGui_LIBRARY_DIRS Dtk::Gui INTERFACE_LINK_DIRECTORIES)
set(DtkGui_TOOL_DIRS "${PACKAGE_PREFIX_DIR}/libexec/dtk5/DGui/bin")

check_required_components(DtkGui)

# Keep deprecated variables for compatibility
set(DTKGUI_INCLUDE_DIR ${DtkGui_INCLUDE_DIRS})
set(DTKGUI_TOOL_DIR ${DtkGui_TOOL_DIRS})
