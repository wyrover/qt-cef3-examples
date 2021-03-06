#-------------------------------------------------
#
# Project created by QtCreator 2018-08-02T16:36:47
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = QSimpleCefBrowser
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += ../3rdparty/cef3440

SOURCES += main.cpp\
    ./qBrowserWindow/QBrowserWindow.cpp \
    ./qBrowserWindow/QCefWebView.cpp \
    ./cef3/CefAppImp.cpp \
    ./cef3/CefBrowserHandlerImp.cpp

HEADERS  += ./qBrowserWindow/QBrowserWindow.h \
    ./qBrowserWindow/QCefWebView.h \
    ./cef3/CefAppImp.h \
    ./cef3/CefBrowserHandlerImp.h

#FORMS    += mainwindow.ui


win32:LIBPATH += ../3rdparty/cef3440/lib


win32:LIBS += libcef.lib libcef_dll_wrapper.lib cef_sandbox.lib

