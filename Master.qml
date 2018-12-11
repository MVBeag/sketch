import QtQuick 2.9
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.3
//import QtQuick.Extras 1.1

Rectangle {
    id: mainframe
    color: "#20283F"
    width: 90
    height: 430
    Layout.leftMargin: 16
    Layout.rightMargin: 16
    ColumnLayout {
        id: lamp1frameRows
        spacing: 0
        Rectangle{
            id: lamp1Number
            Layout.alignment: Qt.AlignCenter
            color: "#20283F"
            width: 90
            height: 40
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
            Layout.alignment: Qt.AlignCenter
            color: "#20283F"
            width: 90
            height: 350
            /*
            Gauge {
                minimumValue: 20
                value: 50
                maximumValue: 100
                minorTickmarkCount: 10
                anchors.top: parent.top
                anchors.topMargin: 10
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 10
                anchors.horizontalCenter: parent.horizontalCenter
            }
            */
        }
        Rectangle{
            Layout.alignment: Qt.AlignCenter
            color: "#20283F"
            width: 90
            height: 40
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
