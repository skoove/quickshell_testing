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

        TopBar {
            id: topBar

            anchors {
                top: parent.top
                left: parent.left
                right: logoCorner.left
            }
        }

        SideBar {
            id: sideBar

            anchors {
                top: logoCorner.bottom
                bottom: parent.bottom
                right: parent.right
            }
        }

        Rectangle {
            id: logoCorner

            color: Theme.base00

            anchors {
                top: parent.top
                right: parent.right
            }

            implicitHeight: topBar.height
            implicitWidth: sideBar.width

            Image {
                anchors.centerIn: parent
                source: "./gruvbox-dark-rainbow-square.svg"
                height: parent.height - 3
                width: height
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
