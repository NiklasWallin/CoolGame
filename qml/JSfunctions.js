.pragma library

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
