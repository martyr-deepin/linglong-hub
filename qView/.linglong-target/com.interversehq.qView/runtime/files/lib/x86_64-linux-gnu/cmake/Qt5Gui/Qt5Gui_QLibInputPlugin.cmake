
add_library(Qt5::QLibInputPlugin MODULE IMPORTED)


_populate_Gui_plugin_properties(QLibInputPlugin RELEASE "generic/libqlibinputplugin.so" FALSE)

list(APPEND Qt5Gui_PLUGINS Qt5::QLibInputPlugin)
set_property(TARGET Qt5::Gui APPEND PROPERTY QT_ALL_PLUGINS_generic Qt5::QLibInputPlugin)
set_property(TARGET Qt5::QLibInputPlugin PROPERTY QT_PLUGIN_TYPE "generic")
set_property(TARGET Qt5::QLibInputPlugin PROPERTY QT_PLUGIN_EXTENDS "-")
set_property(TARGET Qt5::QLibInputPlugin PROPERTY QT_PLUGIN_CLASS_NAME "QLibInputPlugin")
