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
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
