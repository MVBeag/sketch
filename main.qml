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


        ColumnLayout{
            spacing: 10

            Rectangle {
                Layout.alignment: Qt.AlignCenter
                color: "black"
                border.color: "white"
                Layout.preferredWidth: parent.width
                Layout.preferredHeight: 40
                anchors.left: mainWindows.left
                anchors.right: mainWindows.right
                Layout.topMargin:10

                /*Logo for the Menu, to put the white color I was using ColorOverlay*/
                Image {
                    id:menubron
                    source:"baseline-menu-24px.svg"
                    sourceSize.width: 30
                    sourceSize.height: 30
                    anchors.left: parent.left
                    anchors.leftMargin: 25
                    anchors.topMargin: 10
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
            }

            Rectangle {
                color: "black"
                border.color: "white"
                Layout.preferredWidth: mainWindows.width
                Layout.preferredHeight: mainWindows.height-40-10
                anchors.left: mainWindows.left
                anchors.right: mainWindows.right

                RowLayout {
                    id: layout
                    anchors.fill: parent
                    spacing: 10
                    Rectangle {
                        color: "#60C6F2"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.preferredWidth: 100
                        Layout.preferredHeight: parent.height
                        Layout.leftMargin: 10
                        radius: 5
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
                        Layout.fillHeight: true
                        Layout.preferredWidth: 100
                        Layout.preferredHeight: parent.height
                        radius: 5
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
                        Layout.fillHeight: true
                        Layout.preferredWidth: 100
                        Layout.preferredHeight: parent.height
                        radius: 5
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
                        Layout.fillHeight: true
                        Layout.preferredWidth: 20
                        Layout.preferredHeight: parent.height
                        Layout.rightMargin: 10
                        radius: 5
                    }
                }
            }
        }
    }
}
