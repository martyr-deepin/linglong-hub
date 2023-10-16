
add_library(Qt5::QtVirtualKeyboardHunspellPlugin MODULE IMPORTED)


_populate_VirtualKeyboard_plugin_properties(QtVirtualKeyboardHunspellPlugin RELEASE "virtualkeyboard/libqtvirtualkeyboard_hunspell.so" FALSE)

list(APPEND Qt5VirtualKeyboard_PLUGINS Qt5::QtVirtualKeyboardHunspellPlugin)
set_property(TARGET Qt5::VirtualKeyboard APPEND PROPERTY QT_ALL_PLUGINS_virtualkeyboard Qt5::QtVirtualKeyboardHunspellPlugin)
set_property(TARGET Qt5::QtVirtualKeyboardHunspellPlugin PROPERTY QT_PLUGIN_TYPE "virtualkeyboard")
set_property(TARGET Qt5::QtVirtualKeyboardHunspellPlugin PROPERTY QT_PLUGIN_EXTENDS "")
set_property(TARGET Qt5::QtVirtualKeyboardHunspellPlugin PROPERTY QT_PLUGIN_CLASS_NAME "QtVirtualKeyboardHunspellPlugin")
