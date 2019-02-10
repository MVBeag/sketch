import QtQuick 2.9
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.3


Rectangle {
    id: topframe
    property alias vc: menubron.vc
    Layout.alignment: Qt.AlignCenter
    color: "black"
    Layout.preferredWidth: parent.width
    Layout.preferredHeight: 40
    Layout.topMargin:10
    /*Logo for the Menu, to put the white color I was using ColorOverlay*/
    MouseArea{
        id:matest1
        anchors.fill: parent
        enabled: true
        propagateComposedEvents: true
        hoverEnabled: true
        onClicked: {
            parent.z = 2
        }
    }
    Image {
        id:menubron
        property bool vc: false
        source:"baseline-menu-24px.svg"
        sourceSize.width: 25
        sourceSize.height: 30
        anchors.left: parent.left
        anchors.leftMargin: 20
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
    Rectangle {
        id:blockwithID
        color: "transparent"
        border.color: "#798F99"
        width: 30
        height: 30
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: menuWifi.left
        anchors.rightMargin: 10
        Text {
            text: "5"
            color: "#798F99"
            font.pixelSize: 20
            font.family: "Helvetica"
            font.bold: true
            anchors.centerIn: blockwithID
        }
    }
    Image {
        id:menuWifi
        property bool vc: false
        source:"baseline-wifi-24px.svg"
        sourceSize.width: 30
        sourceSize.height: 30
        anchors.right: menuBatt.left
        anchors.rightMargin: 10
        anchors.verticalCenter: parent.verticalCenter
        ColorOverlay {
            anchors.fill: parent
            source: parent
            color: "#798F99"
        }
    }
    Image {
        id:menuBatt
        property bool vc: false
        source:"baseline-battery_charging_full-24px.svg"
        sourceSize.width: 30
        sourceSize.height: 30
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.verticalCenter: parent.verticalCenter

        ColorOverlay {
            anchors.fill: parent
            source: parent
            color: "#798F99"
        }
    }
}
