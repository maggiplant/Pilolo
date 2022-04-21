import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Add medication")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("Edit.qml"))
            }
            MenuItem {
                text: qsTr("Mark all as taken")
                //onClicked: TODO
            }
            MenuItem {
                text: qsTr("About")
                //onClicked: TODO
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height


        SilicaListView {
            id: listView
            model: 3
            anchors.fill: parent
            header: PageHeader {
                title: qsTr("Medications")
            }
            delegate: BackgroundItem {
                id: delegate

                TextSwitch {
                    x: Theme.horizontalPageMargin
                    text: qsTr("Pill") + " " + index
                    anchors.verticalCenter: parent.verticalCenter
                }

                Separator {

                }

                onClicked: console.log("Clicked " + index)
            }
            VerticalScrollDecorator {}
        }
    }
}

