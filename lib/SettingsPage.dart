import 'package:flutter/material.dart';
import 'package:homescreen/Styles.dart';
import 'package:homescreen/views/LoginScreen.dart';
import 'package:homescreen/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
    decoration: BoxDecoration(
    image: DecorationImage(
        image: AssetImage("assets/backg.png"),
    fit: BoxFit.cover,
    ),
    ),
    child: Center(
    child: SingleChildScrollView(


    child: Column(
    children: <Widget>[_cikisyap()
    ],
    ),
    ),
    ),
    ));
  }

  Widget _cikisyap(){
    new Container(


      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(
        left: 10,
        right: 50,
      ),
      margin: EdgeInsets.only(left: 10.0, right: 10.0),


    );
    new Container(


    decoration: BoxDecoration(
    color: Color.fromRGBO(255, 255, 255, 0.3),
    borderRadius: BorderRadius.circular(10),
    ),
    padding: EdgeInsets.only(
    left: 10,
    right: 50,
    ),
    margin: EdgeInsets.only(left: 10.0, right: 10.0),


    );
    new Container(

    decoration: BoxDecoration(
    color: Color.fromRGBO(255, 255, 255, 0.3),
    borderRadius: BorderRadius.circular(10),
    ),
    padding: EdgeInsets.only(
    left: 10,
    right: 50,
    ),
    margin: EdgeInsets.only(left: 10.0, right: 10.0),
    child: FlatButton(

    onPressed:() {Navigator.of(context).push(MaterialPageRoute(
    builder: (BuildContext context) => LoginScreen()));},
    child: Center(child: Text('Çıkış yap',)),
    ),

    );
  }
  }

