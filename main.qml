import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12
import "qrc:///styles/"
import "./assets"


ApplicationWindow {
    id: root

    visible: true

    Material.theme: Material.Dark
    Material.accent: Material.Purple

    width: 800
    height: 600

    MessageModel {
        id: messageModel
    }

    ContactModel{
        id: contactModel
    }


    ColumnLayout{
        anchors.fill: parent

        Rectangle{
            id: header
            visible: true
            anchors.right: root.right
            z: 1
            Layout.fillWidth: true
            anchors.left: root.left
            height: 50
            color: Theme.headerBgColor

            RowLayout{
                anchors.fill: parent
                ToolButton{
                    text: "\u2630"
                }
                Label{
                    text: "Chat window"
                    horizontalAlignment: Text.AlignHCenter
                    Layout.fillWidth: true
                }
                ToolButton{
                    text: "m"
                }
            }


        }
        RowLayout{
            spacing: 0
            Rectangle{
                width: 200
                Layout.fillHeight: true
                ColumnLayout{
                    anchors.fill: parent
                    spacing: 0
                    Rectangle{
                        id: searchContactField
                        Layout.fillWidth: true
                        height: 50
                        border.color: Theme.borderColor
                        border.width: 1
                        RowLayout{
                            anchors.fill: parent
                            anchors.leftMargin: 10
                            Rectangle {
                                width: 20
                                height: 20
                                Image{
                                    anchors.fill: parent
                                    source: "./assets/search_icon.png"
                                    fillMode: Image.PreserveAspectFit
                                }
                            }

                            TextEdit{
                                text: qsTr("Search contact")
                            }
                        }
                    }
                    Rectangle{
                    id: contactField
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                        ContactList{
                            border.color: Theme.borderColor
                            border.width: 1
                            anchors.fill: parent
                        }
                    }
                }
            }
            ColumnLayout{
                Layout.fillWidth: true
                Layout.fillHeight: true
                Rectangle{
                    id: chatHeader
                    Layout.fillWidth: true
                    height: 50
                    border.color: Theme.borderColor
                    border.width: 1
                    Text {
                        text: qsTr("Your conversation")
                    }
                }

                Rectangle{
                    id: chatField
                    visible: true
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    MessageList{
                        anchors.fill: parent
                    }

                    function onSent(){

                    }
                }

                Rectangle{
                id: footer
                visible: true
                Layout.fillWidth: true
                height: 50
    //            color: "#2F002F"
                border.color: Theme.borderColor
                border.width: 1

                RowLayout {
                    id: row
                    anchors.fill: parent
                    anchors.rightMargin: 20

                    TextEdit {
                        id: textEdit
                        text: qsTr("Print your messge here")
                        Layout.fillWidth: true
                        leftPadding: 10
                    }

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
        }

        }
    }
}
