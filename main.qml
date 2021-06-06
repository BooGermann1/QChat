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

    width: Geometry.windowWidth
    height: Geometry.windowHeight

    MessageModel {
        id: messageModel
    }

    ContactModel{
        id: contactModel
    }

    Drawer{
        id: menuDrawer
        width: Geometry.menuWidth
        height: root.height
        SettingsMenu {
            id: sideMenu
            anchors.fill: parent
        }
    }

    ColumnLayout{
        anchors.fill: parent
        spacing: 0
        Header{
            id: header
        }
        RowLayout{
            spacing: 0
            Rectangle{
                width: 200
                Layout.fillHeight: true
                ColumnLayout{
                    anchors.fill: parent
                    spacing: 0
                    SearchContactField{
                    }
                    Rectangle{
                    id: contactField
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    z: -1
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
                ChatHeader{
                }

                Rectangle{
                    id: chatField
                    visible: true
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    z: -1
                    MessageList{
                        anchors.fill: parent
                    }
                }

                ChatEdit{
                }
            }
        }
    }
}

