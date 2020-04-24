import QtQuick 2.13
import QtQuick.Layouts 1.12
import QtQuick.Window 2.13
import QtQuick.Controls 2.12

Rectangle {

    id: me
    property alias icon: icon.source
    property alias text: label.text
    property bool selected: false

    signal leftClick()
    signal rightClick()
    width: parent.width
    height: 60

    color:{
        if(selected)
            return "grey"
        if(area.containsMouse)
            return "grey"
        return "black"
    }


    RowLayout{
        anchors.fill:parent
        spacing: 7
        anchors.leftMargin: 4
        anchors.rightMargin: 4
        Image{
            id:icon
            source: "icons/image4.png"
            Layout.fillHeight: true
            Layout.preferredWidth: height
            Layout.margins: 7
        }
        ColumnLayout{
            Label{
                id: label
                Layout.fillWidth: true
                font.bold:true
            }
            Label{
                id: label1
                Layout.fillWidth: true
                text: "УрФУ      написать сообщение"
            }
        }
    }
    MouseArea{
        id: area
        anchors.fill: parent
        hoverEnabled: true
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: {
            if(mouse.button===Qt.LeftButton)
                leftClick()
            if(mouse.button===Qt.RightButton)
                rightClick()
        }

    }

}
