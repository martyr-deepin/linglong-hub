
add_library(Qt5::QTextToSpeechEngineFlite MODULE IMPORTED)


_populate_TextToSpeech_plugin_properties(QTextToSpeechEngineFlite RELEASE "texttospeech/libqttexttospeech_flite.so" FALSE)

list(APPEND Qt5TextToSpeech_PLUGINS Qt5::QTextToSpeechEngineFlite)
set_property(TARGET Qt5::TextToSpeech APPEND PROPERTY QT_ALL_PLUGINS_texttospeech Qt5::QTextToSpeechEngineFlite)
set_property(TARGET Qt5::QTextToSpeechEngineFlite PROPERTY QT_PLUGIN_TYPE "texttospeech")
set_property(TARGET Qt5::QTextToSpeechEngineFlite PROPERTY QT_PLUGIN_EXTENDS "")
set_property(TARGET Qt5::QTextToSpeechEngineFlite PROPERTY QT_PLUGIN_CLASS_NAME "QTextToSpeechEngineFlite")
