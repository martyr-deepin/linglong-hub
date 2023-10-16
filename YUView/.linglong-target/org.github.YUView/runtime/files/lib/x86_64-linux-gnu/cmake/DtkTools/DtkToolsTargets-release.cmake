#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Dtk::Xml2Cpp" for configuration "Release"
set_property(TARGET Dtk::Xml2Cpp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dtk::Xml2Cpp PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/libexec/dtk5/DCore/bin/qdbusxml2cpp-fix"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dtk::Xml2Cpp )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dtk::Xml2Cpp "${_IMPORT_PREFIX}/libexec/dtk5/DCore/bin/qdbusxml2cpp-fix" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
