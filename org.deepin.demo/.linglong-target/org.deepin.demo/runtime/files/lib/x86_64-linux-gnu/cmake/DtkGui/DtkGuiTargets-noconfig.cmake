#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Dtk::Gui" for configuration ""
set_property(TARGET Dtk::Gui APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(Dtk::Gui PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_NOCONFIG "Qt5::DBus;Qt5XdgIconLoader"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libdtkgui.so.5.6.11"
  IMPORTED_SONAME_NOCONFIG "libdtkgui.so.5"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dtk::Gui )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dtk::Gui "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libdtkgui.so.5.6.11" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
