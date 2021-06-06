import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import "qrc:///styles/"
import "."

Rectangle {
    Component {
        id: contactDelegate
        Rectangle {
            id: contactItem
            width: contactsView.width
            height: Geometry.contactItemHeight
            border.color: Theme.borderColor
            border.width: 1
            RowLayout{
                anchors.fill: parent
                anchors.leftMargin: 10
                Rectangle {
                    id: contactAvatar
                    width: Geometry.avatarRaduis * 2
                    height: Geometry.avatarRaduis * 2
                    radius: Geometry.avatarRaduis
                    color: "grey"
                }
                Text {
                    Layout.fillWidth: true
                    text: person
                    color: Theme.contactsInactiveTxtColor
                }
            }

            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {
                    contactItem.color = Theme.contactItemHoveredBgColor
                }
                onExited: {
                    contactItem.color = Theme.contactItemBgColor
                }
            }

        }
    }

    ListView {
        id: contactsView
        anchors.fill: parent
        model: contactModel
        delegate: contactDelegate
        boundsBehavior: Flickable.StopAtBounds
        ScrollBar.vertical: ScrollBar {active: true}
    }
}
