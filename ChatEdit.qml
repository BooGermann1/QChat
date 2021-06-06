import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import "qrc:///styles/"

Rectangle{
    visible: true
    Layout.fillWidth: true
    height: Geometry.chatEditHeight
    border.color: Theme.borderColor
    border.width: 1

    RowLayout {
        id: row
        anchors.fill: parent
        anchors.rightMargin: 20
        anchors.topMargin: 2
        Rectangle{
            Layout.fillWidth: true
            Layout.fillHeight: true
            ScrollView {
                anchors.fill: parent

                TextArea {
                    id: textEdit
                    leftPadding: 10

                    placeholderText: "Enter your message here..."
                    placeholderTextColor: "#aaa"
                }
            }
        }

//        TextEdit {
//            id: textEdit
//            Layout.fillWidth: true
//            leftPadding: 10
//            wrapMode: TextEdit.WrapAtWordBoundaryOrAnywhere
//            clip: true

//            property string placeholderText: "Enter your message here..."

//            Text {
//                leftPadding: 10
//                text: textEdit.placeholderText
//                color: "#aaa"
//                visible: !textEdit.text && !textEdit.activeFocus
//            }
//        }

        RoundButton {
            id: buttons
            width: 40
            height: 40


            Image {
                id: sendIcon
                opacity: 1

                anchors.fill: parent
                source: "./assets/send_icon2.png"
                anchors.rightMargin: 5
                anchors.leftMargin: 5
                anchors.bottomMargin: 5
                anchors.topMargin: 5

                clip: true
            }

            onClicked:
                messageModel.append({ message: textEdit.text,
                                        sender: "You",
                                        time: "12:00"})
        }
    }
}
