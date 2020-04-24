import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Window {
    visible: true
    width: 320
    height: 480
    title: qsTr("Контакты")
    ListModel{
        id:contactsModel
        ListElement{
            name: "Маша"
        }

        ListElement{
            name: "Вадим"
        }
        ListElement{
            name: "Максим"
        }
    }

    ContactList{
        model:contactsModel
    }

    ColumnLayout{
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
