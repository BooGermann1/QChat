pragma Singleton

import QtQuick 2.0

Item {
    /* Window */
    property real windowHeight: 600
    property real windowWidth: 600

    /* Globals */
    property real headersHeight: 50
    property real listItemsHeight: 50


    /* Header */
    property real headerHeight: headersHeight

    /* Chat */
    property real chatHeaderHeight: headersHeight
    property real chatEditHeight: headersHeight

    /* Settings Menu */
    property real menuHeaderHeight: headersHeight
    property real menuItemHeight: listItemsHeight
    property real menuWidth: 200

    /* Contacts */
    property real searchContactFieldHeight: headersHeight
    property real searchIconHeight: 20
    property real searchIconWidth: 20
    property real contactItemHeight: listItemsHeight
    property real avatarRaduis: 15
}
