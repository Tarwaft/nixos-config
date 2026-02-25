import QtQuick
import QtQuick.Layouts
import Quickshell.Widgets
import Quickshell.Hyprland

WrapperRectangle {
    required property var screen

    readonly property var hyprMonitor: Hyprland.monitorFor(screen)

    margin: Theme.u(3, screen)
    radius: Theme.u(7, screen)
    color: "black"

    RowLayout {
        spacing: Theme.u(3, screen)

        Repeater {
            model: Hyprland.workspaces.values.filter(ws => ws.monitor === hyprMonitor)

            WrapperRectangle {
                required property var modelData
                radius: Theme.u(5, screen)
                color: modelData === Hyprland.focusedWorkspace ? "#ff0000" : "transparent"

                Text {
                    text: modelData.name
                    font.pixelSize: Theme.u(10, screen)
                    color: "#ffffff"
                }
            }
        }
    }
}
