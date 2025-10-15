import QtQuick
import QtQuick.Layouts

import "root:/"
import "root:/services"

Item {
    Layout.fillHeight: true
    implicitWidth:  clockRect.implicitWidth

    Rectangle {
        id: clockRect
        radius: 100
        color: Theme.base01

        anchors.top: parent.top; anchors.bottom: parent.bottom
        implicitWidth: clockText.implicitWidth + 20

        Text {
            id: clockText
            anchors.centerIn: parent

            color: Theme.base05
            font: "JetBrainsMono NF"
            text: Time.time + " " + Time.date
        }
    }
}
