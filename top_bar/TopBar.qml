import Quickshell
import QtQuick
import QtQuick.Layouts

import "root:/"
import "modules"

Rectangle {
    id: bar
    
    color: Theme.base00

    implicitHeight: 30

    // window to make exclusive zone
    PanelWindow {
        implicitHeight: 0; implicitWidth: 0
        color: "transparent"
        anchors.top: true
        exclusiveZone: bar.implicitHeight
    }

    RowLayout {
        anchors {
            fill: bar
            topMargin: 5
            bottomMargin: anchors.topMargin
        }

        RowLayout {
            id: leftModules

            Layout.fillHeight: true
        }

        RowLayout {
            id: centerModules

            Layout.fillHeight: true
            Clock {}
        }

        RowLayout {
            id: rightModules

            Layout.fillHeight: true

        }
    }
}
