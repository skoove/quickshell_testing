import Quickshell
import QtQuick
import QtQuick.Shapes

Scope {
    id: root
    
    readonly property int bar_size: 30
    
    PanelWindow {
        anchors {
            top: true
            bottom: true
            left: true
            right: true
        }
    }
}
