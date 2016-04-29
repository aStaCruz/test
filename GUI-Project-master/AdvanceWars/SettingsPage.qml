import QtQuick 2.0

Rectangle {
    id: settings
    //property alias mouseArea:mouseArea2settings
    anchors.fill: parent
    //width: parent.wid
    //height: 300
    border.width: 2
    radius: 10
    visible: false
    //my button yes
    Rectangle{
        //property alias mouseArea:mouseArea
        //property alias text:btntextarea
           width:100
           height:50
           border.width: 2
           radius: 5
           color: "transparent"
           x: parent.width * 3 / 5
           y: parent.height * 4 / 6
           Text{
               id:btntextareasettings
               anchors.centerIn: parent
               text: "Load Game"
               font.family: "Helvetica"
               font.pointSize: 14
               color: "black"
           }
           MouseArea{
               id:mouseAreasettings
               anchors.fill: parent
               //hoverEnabled: true
               onPressed: {splash.visible = false}
               onClicked:{splash.visible = false}
               //onEntered: {parent.color = "#CCE5FF"
               //parent.opacity = .2}
               //onExited: {parent.color = "transparent"
               //parent.opacity = 1}
           }
    }
    //no button
    Rectangle{
        //property alias mouseArea:mouseArea2
        //property alias text:btntextarea2
           width:100
           height:50
           border.width: 2
           radius: 5
           color: "transparent"
           x: parent.width / 5
           y: parent.height * 4 / 6
           Text{
               id:btntextarea2settings
               anchors.centerIn: parent
               text: "New Game"
               font.family: "Helvetica"
               font.pointSize: 14
               color: "black"
           }
           MouseArea{
               id:mouseArea2settings
               anchors.fill: parent
               //hoverEnabled: true
               onClicked:{parent.visible = false}
               //onEntered: {parent.color = "#A0A0A0"
               //parent.opacity = .2}
               //onExited: {parent.color = "transparent"
               //parent.opacity = 1}
           }
    }
    //my textrect
    Rectangle{
        //property alias text:textarea
           width:400
           height:60
           border.width: 2
           color: "transparent"
           y: 60
           Text{
               id:textareasettings
               anchors.centerIn: parent
               text: "Advance Wars"
               font.family: "Helvetica"
               font.pointSize: 18
               color: "black"
           }
    }
    MouseArea{
        id:mouseArea3settings
        anchors.fill: parent
        drag.target: parent
        //onClicked:{splash.visible = false}
        //drag.maximumX: maximumDragX
        //drag.maximumY: maximumDragY
    }
}


