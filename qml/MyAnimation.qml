import VPlay 2.0
import QtQuick 2.0

SequentialAnimation{
    id:theAni
    property alias myAniRunning: theAni.running
    property alias myAniTarget : theInnerAni.target

    loops:1
    ParallelAnimation{

        NumberAnimation{
            id:theInnerAni
            property: "y"
            from:0
            to:50
            duration: 250
        }NumberAnimation{
            target: theInnerAni.target
            property: "opacity"
            from:1.0
            to:0.0
            duration: 250
        }
    }


    //myAniTarget: Logic.getImage()


    ParallelAnimation{
        NumberAnimation{
            target: theInnerAni.target
            property: "y"
            from:50
            to:0
            duration: 250
        }
        NumberAnimation{
            target: theInnerAni.target
            property: "opacity"
            from:0.0
            to:1.0
            duration: 250
        }
    }
}
