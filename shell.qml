import Quickshell
import QtQuick
import QtQuick.Layouts

Scope {
    PanelWindow {
    id: left_bar
    
        anchors {
            top: true
            left: true
            bottom: true
        }

        implicitWidth: 30
        color: Theme.base00
    }

    PanelWindow {
        id: top_bar

        anchors {
            top: true
            left: true
            right: true
        }

        implicitHeight: 20
        color: Theme.base00

        RowLayout {
            anchors {
                top: parent.top
                bottom: parent.bottom
                right: parent.right
            }

            spacing: 5
            layoutDirection: Qt.RightToLeft
            
            // uniformCellSizes: true

            Rectangle {
                color: Theme.base01
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumWidth: childrenRect.width + parent.spacing

                Text {
                    anchors.centerIn: parent
                    color: Theme.base05
                    text: Time.date
                }
            }

            Rectangle {
                color: Theme.base01
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumWidth: childrenRect.width + parent.spacing

                Text {
                    anchors.centerIn: parent
                    color: Theme.base05
                    text: Time.time
                }
            }

        }
    }
}
