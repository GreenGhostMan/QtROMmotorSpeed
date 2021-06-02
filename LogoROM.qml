import QtQuick 2.0

Rectangle{
    id: logoroot
    anchors.fill: parent
    color: "black"

    Rectangle { // ------------------------------------------------------------------->  face
        id: faceRect
        color: "#00000000"
        y:-200
        //anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        //implicitWidth: face.implicitWidth; implicitHeight: face.implicitHeight
        width: logoroot.height; height: logoroot.height
        Image{
            id: face
            source: "face.png"
            width: faceRect.width; height: faceRect.height

            Image{
                id: eyeOuter
                source: "eye-outer.png"
                anchors.horizontalCenter: face.horizontalCenter
                anchors.verticalCenter: face.verticalCenter
                width: faceRect.width; height: faceRect.height
                Image{
                    id: eyeball
                    source: "eye.png"
                    width: faceRect.width; height: faceRect.height
                }
            }
            NumberAnimation on y{
                to: logoroot.height/2; duration: 5000
                easing.type: Easing.OutBounce
           }
            RotationAnimation on rotation {
                from: 300; to: 360
                direction: RotationAnimation.Shortest
                duration: 5000
            }
        }
    } // ---------------------------------------------------------------------------------------------------->face




}
