import Quickshell
import QtQuick

Scope {
    id: root

    PanelWindow {
        id: window

        mask: Region {
            x: 100
            width: 100
            height: 100
        }

        color: "transparent"

        exclusionMode: ExclusionMode.Ignore

        anchors {
            top: true
            bottom: true
            left: true
            right: true
        }

        TopBar { id: topBar }
        SideBar { id: sideBar }

        Item {
            id: logoCorner

            anchors {
                top: parent.top
                right: parent.right
            }

            implicitHeight: 40
            implicitWidth: implicitHeight

            Image {
                anchors.fill: parent
                anchors.margins: 3
                source: "./gruvbox-dark-rainbow-square.svg"
            }
        }

        Corner {
            id: top_right_corner
            corner: "top_right"
            anchors {
                top: topBar.bottom
                right: sideBar.left
            }
        }

        Corner {
            corner: "top_left"
            anchors {
                top: topBar.bottom
                left: parent.left
            }
        }

        Corner {
            corner: "bottom_right"
            anchors {
                right: sideBar.left
                bottom: parent.bottom
            }
        }
    }
}
