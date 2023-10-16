#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "FcitxQt5::DBusAddons" for configuration ""
set_property(TARGET FcitxQt5::DBusAddons APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(FcitxQt5::DBusAddons PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libFcitxQt5DBusAddons.so.1.0"
  IMPORTED_SONAME_NOCONFIG "libFcitxQt5DBusAddons.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS FcitxQt5::DBusAddons )
list(APPEND _IMPORT_CHECK_FILES_FOR_FcitxQt5::DBusAddons "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libFcitxQt5DBusAddons.so.1.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
