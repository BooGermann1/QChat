import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import "qrc:///styles/"
import "."

Rectangle {

    Component {
        id: messageDelegate

        Rectangle {
            //TODO: Debug and make calculations more precise
            width: Helpers.max(textMessage.contentWidth, timeMessage.contentWidth + senderMessage.contentWidth) + 30
            height: textMessage.implicitHeight + timeMessage.implicitHeight + 15

            Component.onCompleted: {
                if (sender == "You") {
                    color = Theme.messageMyBgColor
                    anchors.right = parent.right
                    anchors.rightMargin = 10
                } else {
                    color = Theme.messageOtherBgColor
                    anchors.left = parent.left
                    anchors.leftMargin = 10
                }
            }
            radius: 10


            ColumnLayout {
                anchors.fill: parent
                anchors.rightMargin: 5
                anchors.leftMargin: 5
                anchors.topMargin: 5
                anchors.bottomMargin: 5
                Text { id: textMessage; text: message }
                 RowLayout{
                     Layout.fillWidth: true
                     Item {
                         Layout.fillWidth: true
                     }
                     Text {
                         id: timeMessage
                         text: time
                     }
                     Text {
                         id: senderMessage
                         text: sender
                     }
                 }
            }

                MouseArea{
                    anchors.fill: parent
                    onHoverEnabledChanged: {

                    }
                }
            }
    }

    ListView {
        anchors.fill: parent
        model: messageModel
        delegate: messageDelegate
        focus: true
        spacing: 5

        boundsBehavior: Flickable.StopAtBounds
        ScrollBar.vertical: ScrollBar {}
    }
}
