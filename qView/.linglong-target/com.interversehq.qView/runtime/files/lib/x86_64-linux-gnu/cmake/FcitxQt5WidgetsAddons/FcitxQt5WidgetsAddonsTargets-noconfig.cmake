#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "FcitxQt5::WidgetsAddons" for configuration ""
set_property(TARGET FcitxQt5::WidgetsAddons APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(FcitxQt5::WidgetsAddons PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libFcitxQt5WidgetsAddons.so.1.0"
  IMPORTED_SONAME_NOCONFIG "libFcitxQt5WidgetsAddons.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS FcitxQt5::WidgetsAddons )
list(APPEND _IMPORT_CHECK_FILES_FOR_FcitxQt5::WidgetsAddons "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libFcitxQt5WidgetsAddons.so.1.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
