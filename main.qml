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

            Rectangle {
                id: topframe
                Layout.alignment: Qt.AlignCenter
                color: "black"
                border.color: "white"
                Layout.preferredWidth: parent.width
                Layout.preferredHeight: 40
                Layout.topMargin:10

                /*Logo for the Menu, to put the white color I was using ColorOverlay*/
                Image {
                    id:menubron
                    source:"baseline-menu-24px.svg"
                    sourceSize.width: 30
                    sourceSize.height: 30
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.verticalCenter: parent.verticalCenter
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
                id: bottomframe
                color: "black"
                border.color: "white"
                Layout.preferredWidth: mainWindows.width
                Layout.preferredHeight: 480-40-10
                anchors.left: mainWindows.left
                anchors.right: mainWindows.right

                RowLayout {
                    id: layoutLampsMaster
                    anchors.fill: bottomframe
                    Rectangle {
                        id: lamp1frame
                        color: "#60C6F2"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.preferredWidth: 100
                        Layout.preferredHeight: 480-40-10
                        Layout.leftMargin: 10
                        radius: 5

                        ColumnLayout {
                            id: lamp1frameRows
                            anchors.fill:parent
                            spacing: 1
                            Rectangle{
                                id: lampEnergyFrame
                                border.color: "White"
                                color: "green"
                                opacity: 0.5
                                Layout.alignment: Qt.AlignCenter
                                Layout.preferredWidth: parent.width
                                Layout.preferredHeight: (480-40-10)/2
                                Text {
                                    anchors.centerIn: parent
                                    font.family: "Helvetica"
                                    font.pixelSize: 32
                                    text: "7.5"
                                }
                            }
                            Rectangle{
                                id: lampFTFrame
                                border.color: "White"
                                color: "yellow"
                                opacity: 0.5
                                Layout.alignment: Qt.AlignCenter
                                Layout.preferredWidth: parent.width
                                Layout.preferredHeight: (480-40-10)*15/100
                            }
                            Rectangle{
                                id: lampDelayFrame
                                border.color: "red"
                                color: "black"
                                opacity: 0.5
                                Layout.alignment: Qt.AlignCenter
                                Layout.preferredWidth: parent.width
                                Layout.preferredHeight: (480-40-10)*15/100
                            }
                            Rectangle{
                                id: onOff
                                border.color: "green"
                                color: "black"
                                opacity: 0.5
                                Layout.alignment: Qt.AlignCenter
                                Layout.preferredWidth: parent.width
                                Layout.preferredHeight: (480-40-10)*15/100
                            }
                        }

                    }
                    Rectangle {
                        id: lamp2frame
                        color: "#304151"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.preferredWidth: 100
                        Layout.preferredHeight: 480-40-10
                        radius: 5
                        GridLayout {
                            columns: 1
                            rows: 4
                            //spacing: 1
                            Rectangle{color: "red"; width: 100; height: 100}
                            Rectangle{color: "green"; width: 100; height: 100}
                            Rectangle{color: "blue"; width: 100; height: 100}
                            Rectangle{color: "cyan"; width: 100; height: 100}
                        }
                    }
                    Rectangle {
                        id: lamp3frame
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
                        id: mainframe
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
