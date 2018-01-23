.pragma library

function getImage() {
    var number = Math.floor((Math.random()*100000) % 28);
    var imageSource = "";

    if(number < 2)
        imageSource = "../assets/vplay-logo.png";
    else if(number < 7)
        imageSource = "../assets/apple"
    else if(number < 12)
        imageSource = "../assets/orange"
    else if(number < 17)
        imageSource = "../assets/watermelon"
    else if(number < 23)
        imageSource = "../assets/raspberry"
    else if(number < 28)
        imageSource = "../assets/banana"

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

function checkIfWin(source1, source2, source3){
    var winning = false;
    if(source1 == source2 && source2 == source3)
        winning = true;

    return winning
}

