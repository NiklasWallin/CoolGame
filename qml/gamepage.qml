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
                imageWidth: (gamepage.width / 10) * 2
                imageHeight: (gamepage.height / 10) * 2
                source: "../assets/vplay-logo.png"
            }
            MyImage{
                id:image2
                imageWidth: (gamepage.width / 10) * 2
                imageHeight: (gamepage.height / 10) * 2
                source: "../assets/vplay-logo.png"
            }
            MyImage{
                property bool changedTest: true
                id:image3
                imageWidth: (gamepage.width / 10) * 2
                imageHeight: (gamepage.height / 10) * 2
                source: "../assets/vplay-logo.png"
                /*{
                    if(image3.changedTest == true){
                        image3.source = "../assets/apple.png"
                        changedImage = false
                    }else{
                        image3.source = "../assets/vplay-logo.png"
                    }
                }*/


            }
        }

        Row{
            spacing: (parent.width / 10) * 2
            x:(gamepage.width / 10) * 1.5
            y:(parent.height / 12 ) * 6.5

            MyButton {
                buttonWidth : (gamepage.width / 10) * 1
                buttonHeight: (gamepage.height / 12) * 1
                buttonText: "Unlocked"
            }
            MyButton {
                buttonWidth : (gamepage.width / 10) * 1
                buttonHeight: (gamepage.height / 12) * 1
                buttonText: "Unlocked"
            }
            MyButton {
                buttonWidth : (gamepage.width / 10) * 1
                buttonHeight: (gamepage.height / 12) * 1
                buttonText: "Unlocked"
                onClicked: {

                }
            }
        }

        MyButton {
            id:spinnbutton
            x:(gamepage.width / 10) * 3
            y:(parent.height / 12 ) * 9.5
            buttonWidth : (gamepage.width / 10) * 4
            buttonHeight: (gamepage.height / 12) * 2
            buttonText: "Spin"
            onClicked: {

                image1.source = getNewSource(image1.changedImage)
                image1.changedImage = !image1.changedImage          //gör såhe

                image2.source = getNewSource(image2.changedImage)
                image2.changedImage = !image2.changedImage

                image3.source = getNewSource(image3.changedImage)
                image3.changedImage = !image3.changedImage
            }
        }

        function getRandomInt() {
            var number = Math.floor(Math.random() % 6).toString();
            alert(number);
            return number;
        }

        function getNewSource(test){
            var newSource = "";
            if(test == true)
                newSource = "../assets/orange.png";
            else
                newSource = "../assets/apple.png";

            return newSource;

        }
    }



