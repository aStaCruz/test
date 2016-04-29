TEMPLATE = app

QT += qml quick widgets
CONFIG += c++11

SOURCES += main.cpp \
    advancewars.cpp \
    building.cpp \
    cell.cpp \
    grid.cpp \
    unit.cpp

RESOURCES += qml.qrc \
    img.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

#DISTFILES += \
#    img/background.png

HEADERS += \
    building.h \
    cell.h \
    grid.h \
    unit.h \
    advancewars.h
