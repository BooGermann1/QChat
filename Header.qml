import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import "qrc:///styles/"

Rectangle{
    id: header
    visible: true
    z: 1
    Layout.fillWidth: true
    height: Geometry.headerHeight
    color: Theme.headerBgColor

    RowLayout{
        anchors.fill: parent
        ToolButton{
            icon.source: "./assets/settings_icon.png"

            hoverEnabled: true
            onClicked: {
                if (!menuDrawer.opened) menuDrawer.open()
            }
            background: Rectangle{
                color: "transparent"
            }
        }
        Label{
            text: "QChat"
            font.family: "Roboto"; font.pointSize: 13; font.bold: true;
            color: Theme.headerTxtColor
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true
        }
        ToolButton{
            icon.source: "./assets/question_icon.png"
            background: Rectangle{
                color: "transparent"
            }
        }

    }
}
