QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

include(GraphicEQWidget/GraphicEQWidget.pri)

SOURCES += main.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = $$PREFIX/bin
!isEmpty(target.path): INSTALLS += target

DESKTOP_FILE = ./demo.desktop
system("echo '[Desktop Entry]' > $$DESKTOP_FILE")
system("echo 'Type=Application' >> $$DESKTOP_FILE")
system("echo 'Name=demo' >> $$DESKTOP_FILE")
system("echo 'Comment=demo.' >> $$DESKTOP_FILE")
system("echo 'Exec=demo' >> $$DESKTOP_FILE")
system("echo 'Terminal=false' >> $$DESKTOP_FILE")
system("echo 'Categories=Utility;' >> $$DESKTOP_FILE")

desktop.files += $$DESKTOP_FILE
desktop.path = $$PREFIX/share/applications
INSTALLS += desktop
