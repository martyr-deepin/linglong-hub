#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt5Xdg" for configuration "RelWithDebInfo"
set_property(TARGET Qt5Xdg APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Qt5Xdg PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libQt5Xdg.so.3.6.0"
  IMPORTED_SONAME_RELWITHDEBINFO "libQt5Xdg.so.3"
  )

list(APPEND _IMPORT_CHECK_TARGETS Qt5Xdg )
list(APPEND _IMPORT_CHECK_FILES_FOR_Qt5Xdg "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libQt5Xdg.so.3.6.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
