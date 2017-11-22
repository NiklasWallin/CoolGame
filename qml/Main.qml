import VPlayApps 1.0
import QtQuick 2.0

App {
    NavigationStack{
        Page{
            id:welcomepage
            title: "Main page"
            backgroundColor: "lightgreen"
            anchors.fill: parent
            Text{
                id:text
                anchors.centerIn: parent
            }

            AppButton{
                anchors.centerIn: parent
                anchors.horizontalCenter: parent.Center
                text: "Test button"
                onClicked: {
                    welcomepage.navigationStack.push(Qt.resolvedUrl(("gamepage.qml")))
                }
            }

        }
    }
}
