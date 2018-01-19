import VPlayApps 1.0
import QtQuick 2.0

App {
    NavigationStack{
        Page{
            id:welcomepage
            title: "Welcome page"
            backgroundColor: "lightgreen"
            anchors.fill: parent
            Text{
                id:text
                anchors.centerIn: parent
            }

            AppButton{
                anchors.centerIn: parent
                anchors.horizontalCenter: parent.Center
                text: "Play the game!"
                onClicked: {
                    welcomepage.navigationStack.push(Qt.resolvedUrl(("gamepage.qml")))
                }
            }
        }
    }
}
