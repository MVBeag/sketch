import QtQuick 2.9
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.11

Rectangle {
    id: mainPage
    z: 1
    color: "black"
    anchors.fill: parent
    property int mainPageLeftMargin: 15
    Image {
        id: broncolorLogo
        x: 35
        y: 65
        sourceSize.width: 350
        sourceSize.height: 350
        source: "broncolor_white.png"
    }
    Text {
        anchors.left: broncolorLogo. left
        //anchors.leftMargin: mainPage.mainPageLeftMargin
        anchors.top: broncolorLogo. bottom
        anchors.topMargin: 15
        font.family: "Calibri Light"
        font.pixelSize: 85
        color: "white"
        text: "Scoro S"
    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            parent.z = 0
        }
    }
}
