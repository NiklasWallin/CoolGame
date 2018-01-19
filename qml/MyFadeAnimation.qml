import VPlay 2.0
import QtQuick 2.0

ParallelAnimation{
    id:fadeAni
    property alias fadeAniRunning: fadeAni.running
    property alias fadeAniTarget : innerFade.target
    loops:1
    NumberAnimation{
        id:innerFade
        target: innerFade.target
        property: "y"
        from:0
        to:50
        duration: 200
    }NumberAnimation{
        target: innerFade.target
        property: "opacity"
        from:1.0
        to:0.0
        duration: 200
    }
}
