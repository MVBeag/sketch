import QtQuick 2.9
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.3

Window {
    id: mainWindows
    visible: true
    width: 640
    height: 480
    //visibility: "FullScreen"
    title: qsTr("click-dummy-hardkeys")

    MainPage{}

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
                        lampName: "4"
                    }
                    Lamp{
                        lampName: "3"
                    }
                    Master{}

                }
            }
        }
    }
}
