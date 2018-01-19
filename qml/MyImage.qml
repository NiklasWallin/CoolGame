import VPlayApps 1.0
import QtQuick 2.0

AppImage{
    id:theimage
    property bool changedImage: false
    property alias imageWidth: theimage.width
    property alias imageHeight: theimage.height
    property alias imageSource: theimage.source

    source: theimage.source;
}
