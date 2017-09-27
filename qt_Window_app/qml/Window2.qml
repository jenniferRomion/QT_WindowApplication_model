import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Window 2.1

import "script.js" as MyScript

Rectangle {

    width: 1000
    height : 1000
    color : "lightblue"

    id : root2

    property int largeurBouton : 140

    Button {
        height: 30
        width : 30
        onClicked: Context.test("eeee")
    }


} //fin Window
