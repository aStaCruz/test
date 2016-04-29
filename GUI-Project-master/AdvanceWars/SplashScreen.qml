import QtQuick 2.0

Rectangle {
    id: splash
    property alias mouseArea:mouseArea2
    property real  maximumDragX:0
    property real  maximumDragY:0
    property alias drag:mouseArea.drag
    width: 400
    height: 300
    border.width: 2
    radius: 10
    visible: true
    //my button yes
    Rectangle{
        property alias mouseArea:mouseArea
        property alias text:btntextarea
           width:100
           height:50
           border.width: 2
           radius: 5
           color: "transparent"
           x: parent.width * 3 / 5
           y: parent.height * 4 / 6
           z: 10
           Text{
               id:btntextarea
               anchors.centerIn: parent
               text: "Load Game"
               font.family: "Helvetica"
               font.pointSize: 14
               color: "black"
               MouseArea{
               anchors.fill: parent
               onPressed: {splash.visible = false}
               onClicked:{splash.visible = false}
               }
           }
           MouseArea{
               id:mouseArea
               //anchors.fill: parent
               //hoverEnabled: true
               //onPressed: {splash.visible = false
               //settings.visible = true}
               //onClicked:{splash.visible = false}
               //onEntered: {parent.color = "#CCE5FF"
               //parent.opacity = .2}
               //onExited: {parent.color = "transparent"
               //parent.opacity = 1}
           }
    }
    //no button
    Rectangle{
        property alias mouseArea:mouseArea2
        property alias text:btntextarea2
           width:100
           height:50
           border.width: 2
           radius: 5
           color: "transparent"
           x: parent.width / 5
           y: parent.height * 4 / 6
           Text{
               id:btntextarea2
               anchors.centerIn: parent
               text: "New Game"
               font.family: "Helvetica"
               font.pointSize: 14
               color: "black"
           }
           MouseArea{
               id:mouseArea2
               anchors.fill: parent
               //hoverEnabled: true
               //onClicked:{parent.visible = false
               //_settings.visible = true}
               //onEntered: {parent.color = "#A0A0A0"
               //parent.opacity = .2}
               //onExited: {parent.color = "transparent"
               //parent.opacity = 1}
           }
    }
    //my textrect
    Rectangle{
        property alias text:textarea
           width:400
           height:60
           border.width: 2
           color: "transparent"
           y: 60
           Text{
               id:textarea
               anchors.centerIn: parent
               text: "Advance Wars"
               font.family: "Helvetica"
               font.pointSize: 18
               color: "black"
           }
    }
    MouseArea{
        id:mouseArea3
        anchors.fill: parent
        drag.target: parent
        //onClicked:{splash.visible = false}
        //drag.maximumX: maximumDragX
        //drag.maximumY: maximumDragY
    }
}
//end of first splash screen

//settings pages
