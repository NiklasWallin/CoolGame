import VPlay 2.0
import QtQuick 2.0

ParallelAnimation{
    id:appearAni
    alwaysRunToEnd: true
    property alias appearAniRunning: appearAni.running
    property alias appearAniTarget : innerAppear.target
    loops:1
    NumberAnimation{
        id:innerAppear
        target: innerAppear.target
        property: "y"
        from:50
        to:0
        duration: 500
    }
    NumberAnimation{
        target: innerAppear.target
        property: "opacity"
        from:0.0
        to:1.0
        duration: 500
    }
}
