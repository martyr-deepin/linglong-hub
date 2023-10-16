
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was DtkDeclarativeConfig.cmake.in                            ########

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
find_package(Qt5 COMPONENTS
    Qml
    Quick
    REQUIRED
)
include(${CMAKE_CURRENT_LIST_DIR}/DtkDeclarativeTargets.cmake)
set(DTK_QML_APP_PLUGIN_PATH /runtime/lib/x86_64-linux-gnu/dtkdeclarative/qml-app)
get_target_property(DtkDeclarative_INCLUDE_DIRS Dtk::Declarative INTERFACE_INCLUDE_DIRECTORIES)
get_target_property(DtkDeclarative_LIBRARY_DIRS Dtk::Declarative INTERFACE_LINK_DIRECTORIES)
set(DTKDeclarative_INCLUDE_DIR ${DtkDeclarative_INCLUDE_DIRS})
set(DtkDeclarative_LIBRARIES Dtk::Declarative)
check_required_components(DtkCore)
