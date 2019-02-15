import QtQuick 2.9
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.3

Rectangle {
    id: lamp1frame
    color: "black"
    width: 150
    height: 430
    Layout.leftMargin: 16
    property alias lampName: lampNumber.text
    ColumnLayout {
        id: lamp1frameRows
        spacing: 0
        Rectangle{
            id: onLamp
            Layout.alignment: Qt.AlignCenter
            border.color: "black"
            color: "#20283F"
            opacity: 1
            width: 150
            height: 40 + 125 + 50
            ColumnLayout {
                id: onLampframe
                spacing: 0
                Rectangle{
                    id: lamp1Number
                    Layout.alignment: Qt.AlignCenter
                    border.color: "transparent"
                    color: "transparent"
                    width: 150
                    height: 40
                    Row {
                        spacing: 0
                        Rectangle {
                            border.color: "black"
                            color: "transparent"
                            width: 30
                            height: 40
                            Text {
                                id: lampNumber
                                anchors.centerIn: parent
                                font.family: "Helvetica"
                                font.pixelSize: 20
                                color: "white"
                                text: "1"
                                opacity: 1
                            }
                        }
                        Rectangle {
                            border.color: "transparent"
                            color: "transparent"
                            width: 90
                            height: 40
                        }
                        Rectangle {
                            border.color: "black"//"#20283F"
                            color: "transparent"
                            width: 30
                            height: 40
                            Text {
                                anchors.centerIn: parent
                                font.family: "Helvetica"
                                font.pixelSize: 20
                                color: "white"
                                text: "01"
                                opacity: 1
                            }
                        }
                    }
                }
                Rectangle{
                    id: lampEnergyFrame
                    Layout.alignment: Qt.AlignCenter
                    border.color: "transparent"
                    color: "transparent"//"#20283F"
                    opacity: 1
                    width: 150
                    height: 125
                    Row {
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        spacing: 1
                        Rectangle{
                            width: 25
                            height: 100
                            color: "transparent"
                        }
                        Rectangle{
                            width: 85
                            height: 100
                            color: "transparent"

                            /*warning to align the text in the Rectangle the
                            height have to be enough
                            to accept the height of the text
                            otherwise the alignement doesn't work*/
                            Text {
                                id: energyDisplay
                                property int energy: 20
                                anchors.centerIn: parent
                                font.family: "Helvetica"
                                font.pixelSize: 62
                                font.bold: true
                                color: "red"
                                text: myLamp1.energy//Number(energy/10)
                            }
                        }
                        Rectangle{
                            width: 25
                            height: 100
                            color: "transparent"
                            Column{
                                id: energyControl
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.verticalCenter: parent.verticalCenter
                                property int t_fastEnergy: 1000
                                Rectangle{
                                    width: 20
                                    height: 25
                                    color: "transparent"
                                    MouseArea{
                                        id: maTest
                                        anchors.fill: parent
                                        propagateComposedEvents: true

                                        onClicked: {
                                            console.log("onPressed")
                                            if (energyDisplay.energy < 100)
                                            {
                                                energyDisplay.energy = energyDisplay.energy + 1;
                                            }
                                        }

                                        onPressAndHold: {
                                            fastEnergyInc.start()
                                        }

                                        onReleased: {
                                            fastEnergyInc.stop()
                                        }

                                        Component.onCompleted: console.log(maTest.mapToGlobal(maTest.x, maTest.y).x + "/" + maTest.mapToGlobal(maTest.x, maTest.y))

                                        Timer{
                                            id: fastEnergyInc
                                            interval: energyControl.t_fastEnergy; repeat: true;
                                            onTriggered: {
                                                console.log("longPressed")
                                                if (energyDisplay.energy <= 90)
                                                {
                                                    energyDisplay.energy = energyDisplay.energy + 10;
                                                }
                                            }
                                        }
                                    }

                                    Image {
                                        source:"baseline-keyboard_arrow_up-24px.svg"
                                        anchors.centerIn: parent
                                        sourceSize.width: 25
                                        sourceSize.height: 25
                                        ColorOverlay {
                                            anchors.fill: parent
                                            source: parent
                                            color: "white"
                                        }
                                    }
                                }
                                Rectangle{
                                    width: 20
                                    height: 25
                                    color: "transparent"
                                    MouseArea{
                                        anchors.fill: parent
                                        propagateComposedEvents: true

                                        onClicked: {
                                            if (energyDisplay.energy > 20)
                                            {
                                                energyDisplay.energy = energyDisplay.energy - 1;
                                            }
                                        }

                                        onPressAndHold: {
                                            fastEnergyDec.start()
                                        }

                                        onReleased: {
                                            fastEnergyDec.stop()
                                        }

                                        Timer{
                                            id: fastEnergyDec
                                            interval: energyControl.t_fastEnergy; repeat: true;
                                            onTriggered: {
                                                console.log("longPressed")
                                                if (energyDisplay.energy >= 30)
                                                {
                                                    energyDisplay.energy = energyDisplay.energy - 10;
                                                }
                                            }
                                        }
                                    }
                                    Image {
                                        source:"baseline-keyboard_arrow_down-24px.svg"
                                        anchors.centerIn: parent
                                        sourceSize.width: 25
                                        sourceSize.height: 25
                                        ColorOverlay {
                                            anchors.fill: parent
                                            source: parent
                                            color: "white"
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                Rectangle{
                    id: lampTimeFrame
                    Layout.alignment: Qt.AlignCenter
                    border.color: "transparent"
                    color: "transparent"
                    opacity: 1
                    width: 150
                    height: 50
                    Text {
                        anchors.centerIn: parent
                        font.family: "Helvetica"
                        color: "white"
                        font.pixelSize: 18
                        text: "t0.1 opt 1/234"
                        opacity: 1
                    }
                }
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
            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                spacing: 1
                Rectangle {
                    width: 40
                    height: 25
                    color: "#20283F"
                    Image {
                        source:"thermometer.svg"
                        anchors.centerIn: parent
                        sourceSize.width: 25
                        sourceSize.height: 25
                        ColorOverlay {
                            anchors.fill: parent
                            source: parent
                            color: "white"
                        }
                    }
                }
                Rectangle {
                    width: 60
                    height: 25
                    color: "#20283F"
                    Text {
                        text: "+400K"
                        color: "white"
                        font.pixelSize: 20
                        font.family: "Helvetica"
                        anchors.centerIn: parent
                    }
                }
            }
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
            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                spacing: 1
                Rectangle {
                    width: 40
                    height: 25
                    color: "#20283F"
                    Image {
                        source:"baseline-timer-24px.svg"
                        anchors.centerIn: parent
                        ColorOverlay {
                            anchors.fill: parent
                            source: parent
                            color: "white"
                        }
                    }
                }
                Rectangle {
                    width: 60
                    height: 25
                    color: "#20283F"
                    Text {
                        text: "1.00s"
                        color: "white"
                        font.pixelSize: 20
                        font.family: "Helvetica"
                        anchors.centerIn: parent
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
            Row {
                spacing: 0
                Rectangle {
                    border.color: "black"
                    color: "#20283F"
                    width: 75;
                    height: 71
                    Image {
                        source:"baseline-power_settings_new-24px.svg"
                        anchors.centerIn: parent
                        ColorOverlay {
                            anchors.fill: parent
                            source: parent
                            color: "white"
                        }
                    }

                }
                Rectangle {
                    border.color: "black"
                    color: "#20283F"
                    width: 75;
                    height: 71
                    Image {
                        source:"baseline-wb_incandescent-24px.svg"
                        anchors.centerIn: parent
                        rotation: 180
                        ColorOverlay {
                            anchors.fill: parent
                            source: parent
                            color: "white"
                        }
                    }
                }
            }
        }
    }

}
