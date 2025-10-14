import Quickshell
import QtQuick

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
}
