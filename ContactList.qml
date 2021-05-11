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
            width: contactsView.width
            height: 50
            border.color: Theme.borderColor
            border.width: 1
            RowLayout{
                anchors.fill: parent
                anchors.leftMargin: 10
                Rectangle {
                    id: contactAvatar
                    width: 30
                    height: 30
                    radius: 15
                    color: "grey"
                }
                Text {
                    Layout.fillWidth: true
                    text: person
                    color: Theme.contactsInactiveTxtColor
                }
            }

        }
    }

    ListView {
        id: contactsView
        anchors.fill: parent
        model: contactModel
        delegate: contactDelegate
    }
}
