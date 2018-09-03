import QtQuick 2.9
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.11


Rectangle {
    id: topframe
    property alias vc: menubron.vc
    Layout.alignment: Qt.AlignCenter
    color: "black"
    Layout.preferredWidth: parent.width
    Layout.preferredHeight: 40
    Layout.topMargin:10
    /*Logo for the Menu, to put the white color I was using ColorOverlay*/
    Image {
        id:menubron
        property bool vc: false
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
