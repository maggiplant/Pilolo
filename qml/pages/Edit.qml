import QtQuick 2.0
import Sailfish.Silica 1.0

// TODO: Make adding impossible when nameField is empty
// TODO: Reminder day of week control (using 'TextSwitch'?)

Dialog {

    allowedOrientations: Orientation.All

    /*DialogHeader {
        acceptText: "Add"
        cancelText: "Cancel"
    }*/

    SilicaFlickable {
        id: flick
        anchors.fill: parent
        contentHeight: column.height + Theme.horizontalPageMargin
        VerticalScrollDecorator { flickable: flick }

        Column {
            id: column
            anchors { left: parent.left; right: parent.right }
            spacing: 0

            DialogHeader {
                acceptText: qsTr("Add")
                cancelText: qsTr("Cancel")
            }


            TextField {
                id: nameField
                label: qsTr("Name: ")
            }

            TimePickerDialog {
                id: timePickerField
            }


        }
    }
}
