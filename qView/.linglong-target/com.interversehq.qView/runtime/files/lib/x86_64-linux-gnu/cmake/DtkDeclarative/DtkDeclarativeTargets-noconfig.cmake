#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Dtk::Declarative" for configuration ""
set_property(TARGET Dtk::Declarative APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(Dtk::Declarative PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libdtkdeclarative.so.5.6.8"
  IMPORTED_SONAME_NOCONFIG "libdtkdeclarative.so.5"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dtk::Declarative )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dtk::Declarative "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libdtkdeclarative.so.5.6.8" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
