import QtQuick 2.0
import QtQuick.Layouts 1.12
import "qrc:///styles/"

Rectangle {
    width: Geometry.menuWidth
    height: Geometry.windowHeight
    color: Theme.menuItemBgColor

    ColumnLayout {
        id: column
        anchors.fill: parent
        spacing: 0

        Rectangle {
            id: usernameRect
            Layout.fillWidth: true
            height: Geometry.headerHeight
            color: Theme.menuHeaderBgColor

            Text {
                id: usernameText
                anchors.fill: parent
                text: qsTr("Sergei Rybin")
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                color: Theme.menuHeaderTxtColor
            }
        }

        SettingsItem { itemText: "item 1" }
        SettingsItem { itemText: "item 2" }
        SettingsItem { itemText: "item 3" }

        SettingsItem { itemText: "Log out" }

        Rectangle{
            Layout.fillHeight: true
        }


    }

}
