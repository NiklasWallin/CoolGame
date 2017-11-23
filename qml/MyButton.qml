import VPlay 2.0
import VPlayApps 1.0
import QtQuick 2.0


AppButton{
    id:thebutton
    property alias buttonWidth: thebutton.width
    property alias buttonHeight: thebutton.height
    property alias buttonText: thebutton.text

    //signal clicked

    MouseArea{
        anchors.fill: parent
        onClicked: {
            thebutton.clicked()
        }
    }
}
