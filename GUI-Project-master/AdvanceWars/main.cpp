//Name: Albert Sta Cruz
//Lab: Lab 2 Splash Screen
//Project Name: Lab 2
#include <QApplication>
#include <QQmlApplicationEngine>
#include <QGuiApplication>
#include <QQmlContext>
#include "advancewars.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;

    //set bindings
    //bind game
    //settings no sure
    //grid _playboard(20,20);
    //engine.rootContext()->setContextProperty("_board", &_playboard);
    //magic_8_ball balls; //step1
    //engine.rootContext()->setContextProperty("Cursed_8_ball", &balls); //step2

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
