pragma Singleton
import QtQuick

QtObject {
    function u(n, screen) {
        return Math.round(n * screen.height / 1080);
    }
}
