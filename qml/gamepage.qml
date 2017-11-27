import VPlayApps 1.0
import QtQuick 2.0

Page {
    id:gamepage
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
            }
            MyImage{
                id:image2
                property bool isLocked: false
                imageWidth: (gamepage.width / 10) * 2
                imageHeight: (gamepage.height / 10) * 2
                source: "../assets/vplay-logo.png"
            }
            MyImage{
                id:image3
                property bool isLocked: false
                imageWidth: (gamepage.width / 10) * 2
                imageHeight: (gamepage.height / 10) * 2
                source: "../assets/vplay-logo.png"
            }
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
                            image1.isLocked = lockingImage(image1.isLocked);
                            button1.buttonText = changeButtonText(image1.isLocked);
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
                            image2.isLocked = lockingImage(image2.isLocked);
                            button2.buttonText = changeButtonText(image2.isLocked);
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
                        image3.isLocked = lockingImage(image3.isLocked);
                        button3.buttonText = changeButtonText(image3.isLocked);
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
                    if(image1.isLocked == false)
                        image1.source = getImage()
                    if(image2.isLocked == false)
                        image2.source = getImage()
                    if(image3.isLocked == false)
                        image3.source = getImage()
                }else{
                    spinnbutton.preSpinLocked = false;

                    image1.source = getImage();
                    image2.source = getImage();
                    image3.source = getImage();

                    image1.isLocked = false;
                    image2.isLocked = false;
                    image3.isLocked = false;

                    button1.buttonText = changeButtonText(false)
                    button2.buttonText = changeButtonText(false)
                    button3.buttonText = changeButtonText(false)
                }
                spinnbutton.preSpinLocked = wasImagesLocked(image1.isLocked,image2.isLocked,image3.isLocked)
            }
        }


        function getImage() {
            var number = Math.floor((Math.random()*100000) % 31);
            var imageSource = "";

            if(number <= 2)
                imageSource = "../assets/vplay-logo.png";
            else if(number <= 10)
                imageSource = "../assets/apple.png"
            else if(number <= 15)
                imageSource = "../assets/orange.png"
            else if(number <= 20)
                imageSource = "../assets/watermelon.png"
            else if(number <= 25)
                imageSource = "../assets/raspberry.jpg"
            else if(number <= 30)
                imageSource = "../assets/banana.jpg"

            return imageSource;
        }

        function getNewSource(test){
            var newSource = "";
            if(test == true)
                newSource = "../assets/orange.png";
            else
                newSource = "../assets/apple.png";

            return newSource;

        }

        function changeButtonText(t){
            var text = "";
            if(t == true)
                text = "Locked";
            else
                text = "Unlocked";
            return text;
        }

        function lockingImage(lValue){
            if(lValue == true)
                lValue = false;
            else
                lValue = true;
            return lValue;
        }

        function wasImagesLocked(a,b,c){
            if(a == true || b == true || c == true)
                return true;
            else
                return false;
        }
    }


