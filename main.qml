import QtQuick 2.9
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.11

Window {
    id: mainWindows
    visible: true
    width: 640
    height: 480
    title: qsTr("click-dummy-hardkeys")

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

    /*To start with a new repository git clone https://github.com/VoegelMichael/sketch.git*/
    Rectangle {
        id: background
        color: "black"
        anchors.fill: parent
        ColumnLayout{
            spacing: 10
            Topframe{
                vc: true
            }
            Rectangle {
                id: bottomframe
                color: "black"
                width: 640
                height: 430

                RowLayout {
                    id: layoutLampsMaster
                    anchors.fill: bottomframe
                    Lamp{
                        lampName: "1"
                    }
                    Lamp{
                        lampName: "2"
                    }
                    Lamp{
                        lampName: "3"
                    }
                    Rectangle {
                        id: mainframe
                        color: "#60C6F2"
                        width: 90
                        height: 430
                        Layout.leftMargin: 16
                        Layout.rightMargin: 16
                    }

                }
            }
        }
    }
}
