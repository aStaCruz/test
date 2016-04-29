import QtQuick 2.6
import QtQuick.Controls 1.5

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Advance Wars")
    color: "transparent"
    Board
    {
        id: brd_board
        visible: false
    }
    Image{
            anchors.fill: parent
            source:"img/background.png"
            width: 640
            height: 480
        }

    //first splash screen
    SplashScreen{
        id: _splash
        visible: true
        Text{
            id:btntextarea
            anchors.centerIn: parent
            text: "Load Game"
            font.family: "Helvetica"
            font.pointSize: 14
            color: "black"
            MouseArea{
            anchors.fill: parent
            onPressed: {splash.visible = false
            _settings.visible = true}
            onClicked:{splash.visible = false
            _settings.visible = true}}
            }
        }
    SettingsPage{
        id: _settings
        visible: false
    }
}
