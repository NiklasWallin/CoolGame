import VPlay 2.0
import QtQuick 2.0

SequentialAnimation{
    id:theAni
    property alias winningRunning: theAni.running
    property alias winningTarget : innerWinningAni.target

    loops:3
    NumberAnimation{
        id:innerWinningAni
        target: innerWinningAni.target
        property: "y"
        from:0
        to:50
        duration: 250
    }
    NumberAnimation{
        target: innerWinningAni.target
        property: "y"
        from:50
        to:0
        duration: 250
    }
}
