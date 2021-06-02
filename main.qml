import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls.Imagine 2.3
import QtQuick.Shapes 1.14

Window {
    id: root
    width: 1224
    height: 800
    visible: true
    title: qsTr("Hello World")
    color: "black"
    RowLayout {
        id: rowLayout
        width: root.width
        height: 110
        spacing: 0

        ColumnLayout {
            id: columnLayout
            width: 100
            height: 100
            spacing: 0

            Logo {
                id: logo
            }
        }

        ColumnLayout {
            id: columnLayout1
            width: 100
            height: 100
            spacing: 0

            Label {
                id: label
                color: "#dedce1"
                text: qsTr("OPEN SOURCE")
                font.pointSize: 25
                font.bold: true
            }

            Label {
                id: label1
                color: "#dedce1"
                text: qsTr("robotics for myanmar")
                font.pointSize: 18
            }

            Label {
                id: label8
                color: "#dedce1"
                text: qsTr("O     S      R      F     M")
                font.pointSize: 18
            }
        }

        ColumnLayout {
            id: columnLayout2
            width: 100
            height: 100
            spacing: 0

            Label {
                id: label2
                color: "#dedce1"
                text: qsTr("ROM")
                font.pointSize: 25
                font.bold: true
            }

            Label {
                id: label3
                color: "#dedce1"
                text: qsTr("No ( 215/2 ) 4th floor, Zewasoe st, 14/2 ward")
                font.pointSize: 18
            }

            Label {
                id: label4
                color: "#dedce1"
                text: qsTr("South Oakkalapa ts, Yangon, Myanmar")
                font.pointSize: 18
            }
        }

        ColumnLayout {
            id: columnLayout3
            width: 100
            height: 100
            spacing: 0

            Label {
                id: label5
                color: "#dedce1"
                text: qsTr("+959 259 288 229")
                font.bold: true
                font.pointSize: 15
            }

            Label {
                id: label6
                color: "#dedce1"
                text: qsTr("+959 259 288 230")
                font.bold: true
                font.pointSize: 15
            }

            Label {
                id: label7
                color: "#dedce1"
                text: qsTr("+959 453 741 976")
                font.bold: true
                font.pointSize: 15
            }
        }

        ColumnLayout {
            id: columnLayout4
            width: 100
            height: 100
            spacing: 0

            Image {
                id: image3
                width: 70
                height: 70
                source: "images/phone.png"
                sourceSize.height: 70
                sourceSize.width: 70
                fillMode: Image.PreserveAspectFit
            }
        }

    }

    RowLayout {
        id: rowLayout1
        width: root.width
        height: 525
        anchors.top: rowLayout.bottom
        spacing: 0
        anchors.topMargin: 0

        ColumnLayout {
            id: columnLayout5
            width: rowLayout1.width/3
            height: 100
            //anchors.top: rowLayout1.top
            RowLayout {
                id: rowLayout2
                width: 100
                height: 100

                Label {
                    id: label9
                    color: "#dedce1"
                    text: qsTr("DC MOTOR SPEED CONTROLLER")
                    leftPadding: 5
                    topPadding: 12
                    font.pointSize: 20
                    font.bold: true
                }
            }

            RowLayout {
                id: rowLayout3
                width: 100
                height: 100

                ColumnLayout {
                    id: columnLayout7
                    width: 100
                    height: 100

                    Label {
                        id: label10
                        color: "#d5a30c"
                        text: qsTr("189")
                        leftPadding: 25
                        topPadding: 25
                        font.bold: true
                        font.pointSize: 120
                    }
                }

                ColumnLayout {
                    id: columnLayout8
                    width: 100
                    height: 100

                    Label {
                        id: label11
                        color: "#dedce1"
                        text: qsTr("ACTUAL")
                        font.pointSize: 16
                        font.bold: true
                    }

                    Label {
                        id: label12
                        color: "#dedce1"
                        text: qsTr("RPM")
                        font.pointSize: 16
                        font.bold: true
                    }
                }
            }

            RowLayout {
                id: rowLayout4
                width: 100
                height: 100

                ColumnLayout {
                    id: columnLayout9
                    width: 100
                    height: 100

                    Label {
                        id: label13
                        color: "#dedce1"
                        text: qsTr("Set ")
                        leftPadding: 0
                        topPadding: 0
                        font.pointSize: 16
                        font.bold: true
                    }

                    Label {
                        id: label15
                        color: "#dedce1"
                        text: qsTr("RPM")
                        leftPadding: 0
                        font.bold: true
                        font.pointSize: 16
                    }
                }

                ColumnLayout {
                    id: columnLayout10
                    width: 100
                    height: 100

                    Label {
                        id: label14
                        color: "#f8764b"
                        text: qsTr("190")
                        bottomPadding: 0
                        topPadding: 0
                        font.pointSize: 60
                        font.bold: true
                    }
                }
            }

            RowLayout {
                id: rowLayout5
                width: 100
                height: 100

                DialROM {
                    id: dialROM
                    value: 190
                    stepSize: 1
                    to: 320
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
                //anchors.horizontalCenter: columnLayout5.horizontalCenter

            }


        }

        ColumnLayout {
            id: columnLayout6
            width: ( rowLayout1.width ) * 2/3
            height: 100
            //anchors.top: rowLayout1.top
            RowLayout {
                id: rowLayout6
                width: 700
                height: 600
            }

            RowLayout {
                id: rowLayout7
                width: 100
                height: 100
            }
        }
    }
}
