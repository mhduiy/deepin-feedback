/*************************************************************
*File Name: ReportTypeButton.qml
*Author: Match
*Email: Match.YangWanQing@gmail.com
*Created Time: Fri 30 Jan 2015 05:45:35 PM CST
*Description:
*
*************************************************************/
import QtQuick 2.1

Rectangle {
    id:reportTypeButton
    width: 202
    height: 33
    radius: 4
    state: actived ? "actived" : "normal"

    property bool actived: false
    property alias textItem: text_item
    property alias text: text_item.text

    signal entered()
    signal exited()
    signal clicked()

    Text {
        id:text_item
        anchors.centerIn: parent
        width: parent.width
        height: parent.height
        wrapMode: Text.Wrap
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 13
        clip: true
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true

        onEntered: {
            parent.entered()
        }

        onExited: {
            parent.exited()
        }

        onClicked: {
            parent.clicked()
        }
    }

    states:[
        State {
            name: "normal"
            PropertyChanges {target: reportTypeButton; color:bgNormalColor; border.color: buttonBorderColor}
            PropertyChanges {target: text_item; color: textNormalColor}
        },
        State {
            name: "actived"
            PropertyChanges {target: reportTypeButton; color: bgActivedColor; border.color: bgActivedColor}
            PropertyChanges {target: text_item; color: textActivedColor}
        }
    ]
}