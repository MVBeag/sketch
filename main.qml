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
        color: "grey"
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
                color: "#e27373"
                width: 640
                height: 430

                RowLayout {
                    id: layoutLampsMaster
                    anchors.fill: bottomframe
                    Rectangle {
                        id: lamp1frame
                        color: "red"
                        width: 150
                        height: 430
                        Layout.leftMargin: 16

                        ColumnLayout {
                            id: lamp1frameRows
                            spacing: 0
                            Rectangle{
                                id: lamp1Number
                                Layout.alignment: Qt.AlignCenter
                                border.color: "white"
                                color: "#60C6F2"
                                width: 150
                                height: 40
                                Row {
                                    spacing: 0
                                    Rectangle {
                                        color: "#60C6F2"
                                        border.color: "white"
                                        width: 30
                                        height: 40
                                        Text {
                                            anchors.centerIn: parent
                                            font.family: "Helvetica"
                                            font.pixelSize: 20
                                            text: "1"
                                            opacity: 1
                                        }
                                    }
                                    Rectangle {
                                        color: "#60C6F2"
                                        border.color: "white"
                                        width: 90
                                        height: 40
                                    }
                                    Rectangle {
                                        color: "#60C6F2"
                                        border.color: "white"
                                        width: 30
                                        height: 40
                                        Text {
                                            anchors.centerIn: parent
                                            font.family: "Helvetica"
                                            font.pixelSize: 20
                                            text: "01"
                                            opacity: 1
                                        }
                                    }
                                }
                            }
                            Rectangle{
                                id: lampEnergyFrame
                                Layout.alignment: Qt.AlignCenter
                                border.color: "White"
                                color: "#60C6F2"
                                opacity: 1
                                width: 150
                                height: 125
                                Text {
                                    anchors.centerIn: parent
                                    font.family: "Helvetica"
                                    font.pixelSize: 32
                                    text: "7.5"
                                    opacity: 1
                                }
                            }
                            Rectangle{
                                id: lampTimeFrame
                                Layout.alignment: Qt.AlignCenter
                                border.color: "White"
                                color: "#60C6F2"
                                opacity: 1
                                width: 150
                                height: 50
                                Text {
                                    anchors.centerIn: parent
                                    font.family: "Helvetica"
                                    font.pixelSize: 18
                                    text: "t0.1 opt 1/234"
                                    opacity: 1
                                }
                            }
                            Rectangle{
                                id: lampFTFrame
                                Layout.alignment: Qt.AlignCenter
                                border.color: "black"
                                color: "#20283F"
                                opacity: 1
                                width: 150
                                height: 73
                            }
                            Rectangle{
                                id: lampDelayFrame
                                Layout.alignment: Qt.AlignCenter
                                border.color: "black"
                                color: "#20283F"
                                opacity: 1
                                width: 150
                                height: 71
                                /*to create a set I use Item*/
                                Rectangle {
                                    /*anchor with item take the middle of the first element, here the clock*/
                                    id: lampDelayFrameIconeText
                                    anchors.horizontalCenter: lampDelayFrame.horizontalCenter
                                    anchors.verticalCenter: lampDelayFrame.verticalCenter
                                    color: "#20283F"
                                    width: 150
                                    height: 70
                                    Row {
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        anchors.verticalCenter: parent.verticalCenter
                                        spacing: 1
                                        Rectangle {
                                            width: 40
                                            height: 25
                                            color: "#20283F"
                                            Image {
                                                id:lampDelayFrameIcone
                                                source:"baseline-timer-24px.svg"
                                                anchors.centerIn: parent
                                            }
                                            ColorOverlay {
                                                anchors.fill: lampDelayFrameIcone
                                                source: lampDelayFrameIcone
                                                color: "white"
                                            }
                                        }
                                        Rectangle {
                                            width: 60
                                            height: 25
                                            color: "#20283F"
                                            Text {
                                                id:lampDelayFrameText
                                                text: "1.00s"
                                                color: "white"
                                                font.pixelSize: 20
                                                font.family: "Helvetica"
                                                anchors.centerIn: parent
                                            }
                                        }
                                    }

                                }
                            }
                            /*only a half part from the rectangle has to be rounded*/
                            Rectangle{
                                id: onOffMod
                                Layout.alignment: Qt.AlignCenter
                                border.color: "black"
                                color: "#20283F"
                                opacity: 1
                                width: 150
                                height: 71
                            }
                        }

                    }
                    Rectangle {
                        id: lamp2frame
                        color: "#60C6F2"
                        width: 150
                        height: 430
                        Layout.leftMargin: 16
                    }
                    Rectangle {
                        id: lamp3frame
                        color: "#60C6F2"
                        width: 150
                        height: 430
                        Layout.leftMargin: 16
                        Text {
                            anchors.centerIn: parent
                            font.family: "Helvetica"
                            font.pixelSize: 32
                            text: "7.5"
                        }
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
