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
        id: textScoroS
        anchors.left: broncolorLogo. left
        anchors.top: broncolorLogo. bottom
        anchors.topMargin: 15
        font.family: "Calibri Light"
        font.pixelSize: 85
        color: "white"
        text: "Scoro S"
    }
    Text {
        anchors.left: broncolorLogo. left
        anchors.top: textScoroS. bottom
        anchors.topMargin: 15
        font.family: "Calibri Light"
        font.pixelSize: 21
        color: "#939393"
        text: "letzte Einstellungen werden geladen... <br><br>
               Studio 5 <br>
               3 Lampen (1 - 2 - 3) <br><br>
               t0.1 = 1/1000 <br>
               Speedmode: HSS"
    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            parent.z = 0
        }
    }
}
