import QtQuick 2.0

Rectangle {
    color: "black"
    anchors.fill: parent
    Image {
        id: face
        width: ( parent.height < parent.width ) ? parent.height : parent.width
        height: ( parent.height < parent.width ) ? parent.height : parent.width
        anchors.horizontalCenter: parent.horizontalCenter
        source: "./images/face.png"

        Image{
            id: eyeOuter
            width: parent.width; height: parent.height
            anchors.horizontalCenter: parent.horizontalCenter
            source: "./images/eye-outer.png"

            Image{
                id: eyes
                width: parent.width; height: parent.height
                anchors.horizontalCenter: parent.horizontalCenter
                source: "./images/eye.png"             
            }

            SequentialAnimation{
                running: true
                NumberAnimation{
                    id: orig
                    target: eyes
                    properties: "x,y"
                    to: 0
                    duration: 5000
                    //easing.type: Easing.OutBounce
                }
                NumberAnimation{
                    id: down
                    target: eyes
                    properties: "x,y"
                    to: 10
                    duration: 1000
                    //easing.type: Easing.OutBounce
                }
                NumberAnimation{
                    id: stop
                    target: eyes
                    properties: "x,y"
                    to: 10
                    duration: 3000
                    //easing.type: Easing.OutBounce
                }
                NumberAnimation{
                    id: up
                    target: eyes
                    properties: "x,y"
                    to: 0
                    duration: 1000
                    easing.type: Easing.OutBounce
                }


            }
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
