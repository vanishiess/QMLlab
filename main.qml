import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Window {
    visible: true
    width: 320
    height: 480
    color: "black"
    title: qsTr("Контакты")
    ListModel{
        id:contactsModel
        ListElement{
            name: "Маша"
            picture: "icons/image.png"
        }

        ListElement{
            name: "Митя"
            picture: "icons/image2.png"
        }
        ListElement{
            name: "Максим"
            picture: "icons/image3.png"
        }
    }

    ContactList{
        model:contactsModel
    }

    ColumnLayout{
        Image{
            source: "icons/6.png"
        }

        anchors.fill: parent
        MainToolBar{
            Layout.fillWidth: true
            onNewItem: {
                contactsModel.append({name:nick})
            }
        }
        ContactList{
            Layout.fillHeight: true
            Layout.fillWidth: true
            model:contactsModel
        }
    }

}
