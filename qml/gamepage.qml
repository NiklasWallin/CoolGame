import VPlayApps 1.0
import QtQuick 2.0
import "JSfunctions.js" as Logic

Page {
    id:gamepage
    property bool threeInRow : false;
    title: "Game page"
    backgroundColor: "lightblue"
    Row{
        spacing: (parent.width / 10) * 1
        x:(gamepage.width / 10) * 1
        y:(parent.height / 12 ) * 3
        MyImage{
            id:image1
            property bool isLocked: false
            imageWidth: (gamepage.width / 10) * 2
            imageHeight: (gamepage.height / 10) * 2
            source: "../assets/vplay-logo.png"
            MyAnimation{
                id:myAni1
                myAniTarget: image1
                myAniRunning: false
            }
        }
        MyImage{
            id:image2
            property bool isLocked: false
            property alias targetSource: image2.source
            imageWidth: (gamepage.width / 10) * 2
            imageHeight: (gamepage.height / 10) * 2
            source: "../assets/vplay-logo.png"
            MyAnimation{
                id:myAni2
                myAniTarget: image2
                myAniRunning: false
            }
        }
        MyImage{
            id:image3
            property bool isLocked: false
            imageWidth: (gamepage.width / 10) * 2
            imageHeight: (gamepage.height / 10) * 2
            source: "../assets/vplay-logo.png"
            MyAnimation{
                id:myAni3
                myAniTarget: image3
                myAniRunning: false
            }
        }
    }

    WinningAnimation{
        id:winning1
        winningTarget: image1
        winningRunning: false
    }
    WinningAnimation{
        id:winning2
        winningTarget: image2
        winningRunning: false
    }
    WinningAnimation{
        id:winning3
        winningTarget: image3
        winningRunning: false
    }

    Row{
        spacing: (parent.width / 10) * 2
        x:(gamepage.width / 10) * 1.5
        y:(parent.height / 12 ) * 6.5

        MyButton {
            id:button1
            buttonWidth : (gamepage.width / 10) * 1
            buttonHeight: (gamepage.height / 12) * 1
            buttonText: "Unlocked"
            onClicked: {
                onClicked: {
                    if(!spinnbutton.preSpinLocked){
                        image1.isLocked = Logic.lockingImage(image1.isLocked);
                        button1.buttonText = Logic.changeButtonText(image1.isLocked);
                    }
                }
            }
        }
        MyButton {
            id:button2
            buttonWidth : (gamepage.width / 10) * 1
            buttonHeight: (gamepage.height / 12) * 1
            buttonText: "Unlocked"
            onClicked: {
                onClicked: {
                    if(!spinnbutton.preSpinLocked){
                        image2.isLocked = Logic.lockingImage(image2.isLocked);
                        button2.buttonText = Logic.changeButtonText(image2.isLocked);
                    }
                }
            }
        }
        MyButton {
            id:button3
            buttonWidth : (gamepage.width / 10) * 1
            buttonHeight: (gamepage.height / 12) * 1
            buttonText: "Unlocked"
            onClicked: {
                if(!spinnbutton.preSpinLocked){
                    image3.isLocked = Logic.lockingImage(image3.isLocked);
                    button3.buttonText = Logic.changeButtonText(image3.isLocked);
                }
            }
        }
    }
    MyButton {
        id:spinnbutton
        property bool preSpinLocked: false
        x:(gamepage.width / 10) * 3
        y:(parent.height / 12 ) * 9.5
        buttonWidth : (gamepage.width / 10) * 4
        buttonHeight: (gamepage.height / 12) * 2
        buttonText: "Spin"
        onClicked: {
            if(!spinnbutton.preSpinLocked){
                if(image1.isLocked == false){
                    image1.source = Logic.getImage()
                    myAni1.start();
                }
                if(image2.isLocked == false){
                    image2.source = Logic.getImage()
                    myAni2.start();
                }
                if(image3.isLocked == false){
                    image3.source = Logic.getImage()
                    myAni3.start();
                }
                if(image1.isLocked || image2.isLocked || image3.isLocked){
                    button1.buttonText = "Unlockable!"
                    button2.buttonText = "Unlockable!"
                    button3.buttonText = "Unlockable!"
                }
            }else{
                spinnbutton.preSpinLocked = false;


                image1.source = Logic.getImage();
                image2.source = Logic.getImage();
                image3.source = Logic.getImage();

                image1.isLocked = false;
                image2.isLocked = false;
                image3.isLocked = false;

                button1.buttonText = Logic.changeButtonText(false)
                button2.buttonText = Logic.changeButtonText(false)
                button3.buttonText = Logic.changeButtonText(false)

                myAni1.start();
                myAni2.start();
                myAni3.start();
            }
            spinnbutton.preSpinLocked = Logic.wasImagesLocked(image1.isLocked,image2.isLocked,image3.isLocked)

            gamepage.threeInRow = Logic.checkIfWin(image1.source,image2.source,image3.source);

            if(gamepage.threeInRow){
                winning1.winningRunning = true;
                winning2.winningRunning = true;
                winning3.winningRunning = true;
                preSpinLocked = true;
                button1.buttonText = "Unlockable!"
                button2.buttonText = "Unlockable!"
                button3.buttonText = "Unlockable!"
                gamepage.threeInRow = false;
            }
        }

    }
}


