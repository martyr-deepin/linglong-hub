#----------------------------------------------------------------
# Generated CMake target import file for configuration "None".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "fmt::fmt" for configuration "None"
set_property(TARGET fmt::fmt APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(fmt::fmt PROPERTIES
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libfmt.so.9.1.0"
  IMPORTED_SONAME_NONE "libfmt.so.9"
  )

list(APPEND _cmake_import_check_targets fmt::fmt )
list(APPEND _cmake_import_check_files_for_fmt::fmt "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libfmt.so.9.1.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
