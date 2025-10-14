pragma Singleton

import Quickshell
import QtQuick

Singleton {
    id: root
    readonly property string time: {
        Qt.formatDateTime(clock.date, "hh:mm")
    }

    readonly property string date: {
        Qt.formatDateTime(clock.date, "yyyy-MM-dd")
    }

    SystemClock {
        id: clock
        precision: SystemClock.Minutes
    }

}
