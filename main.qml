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
