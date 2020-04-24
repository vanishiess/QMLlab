import QtQuick 2.13
import QtQuick.Layouts 1.12
import QtQuick.Window 2.13
import QtQuick.Controls 2.12

RowLayout {
    signal newItem(string nick)
    TextField{
        id: textField
        Layout.fillWidth: true
        selectByMouse: true
    }
    function add(){
        newItem(textField.text);
        textField.clear()
    }

    Button{
        text: "Добавить"
        onClicked: {
            add();
        }
    }

    Keys.onReturnPressed: {
        add();
    }
    Keys.onEnterPressed: {
        add();
    }
}
