import QtQuick 2.0
import QtQuick.Layouts 1.12
import "qrc:///styles/"

Rectangle{
    id: chatHeader
    Layout.fillWidth: true
    height: Geometry.chatHeaderHeight
    border.color: Theme.borderColor
    border.width: 1
    Text {
        text: qsTr("Your conversation")
    }
}
