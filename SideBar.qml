import Quickshell
import QtQuick

Rectangle {
    id: bar
    
    color: Theme.base00

    implicitWidth: 35

    // window to make exclusive zone
    PanelWindow {
        implicitHeight: 0; implicitWidth: 0
        color: "transparent"
        anchors.right: true
        exclusiveZone: bar.implicitWidth
    }
}
