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
        id: background
        color: "black"
        anchors.fill: parent

        /*Logo for the Menu, to put the white color I was using ColorOverlay*/
        Image {
            id:menubron
            source:"baseline-menu-24px.svg"
            sourceSize.width: 40
            sourceSize.height: 40
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

        RowLayout {
            id: layout
            anchors.fill: background
            spacing: 10
            Rectangle {
                color: "#60C6F2"
                Layout.fillWidth: true
                Layout.minimumWidth: 50
                Layout.preferredWidth: 100
                Layout.maximumWidth: 300
                Layout.minimumHeight: 150
                Layout.leftMargin: 10
                Text {
                    anchors.centerIn: parent
                    font.family: "Helvetica"
                    font.pixelSize: 32
                    text: "7.5"
                }
            }
            Rectangle {
                color: "#304151"
                Layout.fillWidth: true
                Layout.minimumWidth: 50
                Layout.preferredWidth: 100
                Layout.maximumWidth: 300
                Layout.minimumHeight: 150
                Text {
                    anchors.centerIn: parent
                    font.family: "Helvetica"
                    font.pixelSize: 32
                    text: "7.5"
                }
            }
            Rectangle {
                color: "#304151"
                Layout.fillWidth: true
                Layout.minimumWidth: 50
                Layout.preferredWidth: 100
                Layout.maximumWidth: 300
                Layout.minimumHeight: 150
                Text {
                    anchors.centerIn: parent
                    font.family: "Helvetica"
                    font.pixelSize: 32
                    text: "7.5"
                }
            }
            Rectangle {
                color: "#304151"
                Layout.fillWidth: true
                Layout.minimumWidth: 50
                Layout.preferredWidth: 20
                Layout.maximumWidth: 300
                Layout.minimumHeight: 150
                Layout.rightMargin: 10
            }
        }

    }

}
