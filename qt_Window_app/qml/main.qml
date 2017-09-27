import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Window 2.1

import "script.js" as MyScript

ApplicationWindow {

    visible : true
    width: 1000
    height : 1000
    minimumWidth: 600
    minimumHeight: 600
    color : "lightblue"

    id : root

    property int largeurBouton : 140

    property var locale: Qt.locale()
    property date currentDate: new Date()
    property string dateString


    menuBar: MenuBar {
        Menu {
            title : "File"
            MenuItem {
                text : "New board" ; onTriggered : console.log("new board")
            }
            MenuItem {
                text : "Open board" ; onTriggered : console.log("open board")
            }
            MenuItem {
                text : "Delete board" ; onTriggered : console.log("delete board")
            }
            MenuItem {
                text : "Quit" ; onTriggered: Qt.quit()
            }
        }

        Menu {
            title : "Edit"
            MenuItem {
                text : "Add post-it" ; onTriggered : console.log("add post-it")
            }
            MenuItem {
                text : "Add notepad" ; onTriggered : console.log("add notepad")
            }
            MenuItem {
                text : "Add picture" ; onTriggered : console.log("add picture")
            }
        }
    }


    Button {
        x : 20 ; y : 20
        height: 30
        width: largeurBouton
        onClicked: {
            MyScript.test();
            newwindow.visible = true
            ;
        }}

    Window
    {
        id : newwindow
        visible: false

        Window2 {

        }
    }



} //fin Window
