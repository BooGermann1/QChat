import QtQuick 2.0
import QtQuick.Layouts 1.12
import "qrc:///styles/"

Rectangle{
    id: searchContactField
    Layout.fillWidth: true
    height: Geometry.searchContactFieldHeight
    border.color: Theme.borderColor
    border.width: 1
    RowLayout{
        anchors.fill: parent
        anchors.leftMargin: 10
        Rectangle {
            width: Geometry.searchIconWidth
            height: Geometry.searchIconHeight
            Image{
                anchors.fill: parent
                source: "./assets/search_icon2.png"
                fillMode: Image.PreserveAspectFit
                smooth: true
            }
        }

        TextEdit{
            text: qsTr("Search contact")
            Layout.fillWidth: true
        }
    }
}
