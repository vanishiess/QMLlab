import QtQuick 2.13
import QtQuick.Layouts 1.12
import QtQuick.Window 2.13
import QtQuick.Controls 2.12

ListView{
    id:list
    clip: true
    boundsBehavior: ListView.StopAtBounds
    ScrollBar.vertical: ScrollBar{}
    model:contactsModel
    delegate: VKconItem{
        text:name
        selected: list.currentIndex===index
        onLeftClick: {
            list.currentIndex=index
        }
    }
}
