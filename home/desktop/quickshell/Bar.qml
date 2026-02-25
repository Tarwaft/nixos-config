import Quickshell // for PanelWindow
import QtQuick.Layouts
import QtQuick

Scope {
    Variants {
        model: Quickshell.screens
        PanelWindow {
            color: "transparent"
            required property var modelData
            screen: modelData
            anchors {
                top: true
                left: true
                right: true
            }
            implicitHeight: Theme.u(20, screen)
            RowLayout {
                anchors.fill: parent
                spacing: 6
                Workspaces {
                    anchors.centerIn: parent
                    screen: modelData
                }
                Item {
                    Layout.fillWidth: true
                }
                ClockWidget {
                    Layout.rightMargin: 10
                    screen: modelData
                }
            }
        }
    }
}
