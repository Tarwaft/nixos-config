import QtQuick
import Quickshell.Widgets

WrapperRectangle {
    required property var screen
    margin: Theme.u(3, screen)
    radius: Theme.u(7, screen)
    Text {
        text: Time.time
        font.pixelSize: Theme.u(10, screen)
    }
}
