#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt5XdgIconLoader" for configuration "RelWithDebInfo"
set_property(TARGET Qt5XdgIconLoader APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Qt5XdgIconLoader PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libQt5XdgIconLoader.so.3.6.0"
  IMPORTED_SONAME_RELWITHDEBINFO "libQt5XdgIconLoader.so.3"
  )

list(APPEND _IMPORT_CHECK_TARGETS Qt5XdgIconLoader )
list(APPEND _IMPORT_CHECK_FILES_FOR_Qt5XdgIconLoader "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libQt5XdgIconLoader.so.3.6.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
