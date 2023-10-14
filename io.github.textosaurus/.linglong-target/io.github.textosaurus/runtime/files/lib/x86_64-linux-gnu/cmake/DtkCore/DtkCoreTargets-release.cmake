#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Dtk::Core" for configuration "Release"
set_property(TARGET Dtk::Core APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dtk::Core PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "spdlog::spdlog"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libdtkcore.so.5.6.12"
  IMPORTED_SONAME_RELEASE "libdtkcore.so.5"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dtk::Core )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dtk::Core "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libdtkcore.so.5.6.12" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
