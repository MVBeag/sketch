import QtQuick 2.9
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0

Window {
    id: wi
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
    id: background
    color: "black"
    anchors.fill: parent

    Image {
        id:menubron
        source:"baseline-menu-24px.svg"
        sourceSize.width: parent.width/10
        sourceSize.height: parent.height/10
        anchors.left: parent.left
        anchors.margins: 10
    }
    ColorOverlay {
        anchors.fill: menubron
        source: menubron
        color: "white"

    }

    Text {
        id:homebron
        text: "Home"
        color: "#798F99"
        font.pixelSize: 20
        font.family: "Helvetica"
        font.bold: true
        anchors.verticalCenter: menubron.verticalCenter
        anchors.left: menubron.right
        anchors.margins: 10
    }

        Rectangle {
        id:grisbron
        x: 50 ; y: 50; width: parent.width - 100; height: parent.height/2 - 50;
        color: "#304151"

            Rectangle {
                id:bleubron
                x: 50; y: 50; width: 100; height: 100;
                color: "#60C6F2"
                Text {
                    id: ff
                    font.family: "Helvetica"
                    font.pixelSize: 32
                    text: "7.5"
                }

            }


            Rectangle {
                id:vert
                x: -10; y: wi.height/2-50; width: parent.width; height: parent.height;
                color: "green"


                Text {
                    id: justforfun
                    font.family: "Helvetica"
                    font.pixelSize: 32
                    text: tapetape.text
                }

                TextInput {
                    id:tapetape
                    x:100; y: 100;
                    text: "tapetape"
                    anchors.left: parent.left

                }
            }
            Image {
                id: logo
                source: "logo.png"
                //fillMode: Image.PreserveAspectFit
                //scale: 0.5
                anchors.right: parent.right                //anchors.verticalCenter: parent
                //anchors.margins: 10
            }
        }



    }

}
