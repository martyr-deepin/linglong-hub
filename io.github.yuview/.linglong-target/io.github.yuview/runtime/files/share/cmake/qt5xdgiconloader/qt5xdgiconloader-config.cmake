
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was qt5xdgiconloader-config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

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

if (NOT TARGET Qt5XdgIconLoader)
    include(CMakeFindDependencyMacro)

    find_dependency(Qt5Gui )
    find_dependency(Qt5Svg )

    if (CMAKE_VERSION VERSION_GREATER 2.8.12)
        cmake_policy(SET CMP0024 NEW)
    endif()
    include("${CMAKE_CURRENT_LIST_DIR}/qt5xdgiconloader-targets.cmake")
endif()
