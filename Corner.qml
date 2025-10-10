import QtQuick
import QtQuick.Shapes
import Quickshell

Item {
    id: root
    property string corner: "top_right" // either top_left top_right bottom_right or bottom_left
    property real radius: 30
    property color fillColor: Theme.base00

    implicitHeight: radius
    implicitWidth: radius

    Shape {
        id: shape

        preferredRendererType: Shape.CurveRenderer
        anchors.fill: parent

        rotation: switch (root.corner) {
            case "top_left": return -90
            case "top_right": return 0
            case "bottom_left": return 180
            case "bottom_right": return -270
        }

        ShapePath {
            strokeWidth: 0
            fillColor: root.fillColor

            PathArc {
                relativeX: root.radius
                relativeY: root.radius
                radiusX: root.radius
                radiusY: root.radius
            }

            PathLine {
                relativeX: 0
                relativeY: -root.radius
            }

            PathLine {
                x: 0
                y: 0
            }
        }
    }
}
