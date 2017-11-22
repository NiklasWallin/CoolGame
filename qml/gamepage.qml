import VPlayApps 1.0
import QtQuick 2.0


    Page {
        id:gamepage
        title: "Game page"
        backgroundColor: "lightblue"

        Row{
            spacing: (parent.width / 10) * 1
            anchors.verticalCenter: parent
            x:(gamepage.width / 10) * 1
            y:(parent.height / 12 ) * 3

            MyImage{
                imageWidth: (gamepage.width / 10) * 2
                imageHeight: (gamepage.height / 12) * 3
            }
            MyImage{
                imageWidth: (gamepage.width / 10) * 2
                imageHeight: (gamepage.height / 12) * 3
            }
            MyImage{
                imageWidth: (gamepage.width / 10) * 2
                imageHeight: (gamepage.height / 12) * 3
            }
        }

        Row{
            spacing: (parent.width / 10) * 1
            anchors.verticalCenter: parent
            x:(gamepage.width / 10) * 1
            y:(parent.height / 12 ) * 8

            MyButton {
                buttonWidth : (gamepage.width / 10) * 2
                buttonHeight: (gamepage.height / 12) * 2
                buttonText: "Unlocked"
            }
            MyButton {
                buttonWidth : (gamepage.width / 10) * 2
                buttonHeight: (gamepage.height / 12) * 2
                buttonText: "Unlocked"
            }
            MyButton {
                buttonWidth : (gamepage.width / 10) * 2
                buttonHeight: (gamepage.height / 12) * 2
                buttonText: "Unlocked"
            }
        }


    }

