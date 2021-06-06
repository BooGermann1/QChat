import QtQuick 2.0
import QtQuick.Layouts 1.12
import "qrc:///styles/"

Rectangle {
    property string itemText: "Item"

    id: itemRect
    Layout.fillWidth: true
    height: Geometry.menuItemHeight
    color: Theme.menuItemBgColor

    Text {
        id: stubMenuText
        anchors.fill: parent
        text: itemText
        font.pixelSize: 12
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        color: Theme.menuItemTxtColor
    }

    MouseArea{
        anchors.fill: parent
        hoverEnabled: true
        onEntered: {
            itemRect.color = Theme.menuItemHoveredBgColor
        }
        onExited: {
            itemRect.color = Theme.menuItemBgColor
        }
    }
}
