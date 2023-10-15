
add_library(Qt5::QTDSDriverPlugin MODULE IMPORTED)


_populate_Sql_plugin_properties(QTDSDriverPlugin RELEASE "sqldrivers/libqsqltds.so" FALSE)

list(APPEND Qt5Sql_PLUGINS Qt5::QTDSDriverPlugin)
set_property(TARGET Qt5::Sql APPEND PROPERTY QT_ALL_PLUGINS_sqldrivers Qt5::QTDSDriverPlugin)
set_property(TARGET Qt5::QTDSDriverPlugin PROPERTY QT_PLUGIN_TYPE "sqldrivers")
set_property(TARGET Qt5::QTDSDriverPlugin PROPERTY QT_PLUGIN_EXTENDS "")
set_property(TARGET Qt5::QTDSDriverPlugin PROPERTY QT_PLUGIN_CLASS_NAME "QTDSDriverPlugin")
