import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homescreen/values/values.dart';
import 'package:homescreen/widgets/potbelly_button.dart';
import 'package:homescreen/widgets/spaces.dart';

import 'LoginScreen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var divWidth;
  bool _autoValidate = false;
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final TextEditingController _firstNameTextController =
      new TextEditingController();
  final TextEditingController _lastNameTextController =
      new TextEditingController();
  final TextEditingController _phoneTextController =
      new TextEditingController();
  final TextEditingController _passwordTextController =
      new TextEditingController();
  final TextEditingController _emailTextController =
      new TextEditingController();
  var kMarginPadding = 16.0;
  var kFontSize = 13.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    divWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Scaffold(
        backgroundColor: Colors.purple,
        // home: Image.asset('assets/bg.jpg'),

        //backgroundColor: Colors.white,
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/backg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                    key: _formKey,
                    autovalidate: _autoValidate,
                    child: Column(
                      children: <Widget>[_buildEmailSignUpForm()],
                    )),
              ),
            )),
      ),
    );
  }

  Widget _buildEmailSignUpForm() {
    //Form 1
    return new Column(
      children: <Widget>[
        new Container(
            /*decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/backg.png"),
              fit: BoxFit.cover,
            ),
          ),*/
            ),
        new Container(
          child: new Container(),
        ),
        new Container(
            padding: EdgeInsets.only(bottom: 45),
            margin: EdgeInsets.only(
                top: 0.0, left: kMarginPadding, right: kMarginPadding),
            child: new Text(
              "Hesabınızı oluşturun ",
              style: Styles.customTitleTextStyle(
                  color: Colors.white70, fontSize: 30),
              maxLines: 1,
            )),
        SpaceH30(),
        new Container(
          height: 65,
          width: 250,
          padding: EdgeInsets.only(
            left: 10,
            right: 50,
          ),
          margin: EdgeInsets.only(left: 10.0, right: 10.0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.3),
              borderRadius: BorderRadius.circular(12),
              ),
          child: new TextFormField(
            style: Styles.normalTextStyle,
            controller: _firstNameTextController,
            validator: _validateFields,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.account_box),
              // labelText: "Adınız*",
              hintText: "Adınız",
              hintStyle: Styles.customNormalTextStyle(fontSize: 13),
              labelStyle: Styles.customNormalTextStyle(fontSize: 16),
            ),
          ),
        ),
        SpaceH16(),
        new Container(
          height: 65,
          width: 250,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.3),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.only(
            left: 10,
            right: 50,
          ),
          margin: EdgeInsets.only(left: 10.0, right: 10.0),
          child: new TextFormField(
              style: Styles.normalTextStyle,
              controller: _lastNameTextController,
              validator: _validateFields,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box),
                  //labelText: "Soyadınız*",
                  hintText: "Soyadınız",
                  hintStyle: Styles.customNormalTextStyle(fontSize: 13),
                  labelStyle: Styles.customNormalTextStyle(fontSize: 16))),
        ),
        SpaceH16(),
        new Container(
          height: 65,
          width: 250,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.3),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.only(left: 10, right: 50),
          margin: EdgeInsets.only(left: 10.0, right: 10.0),
          child: new TextFormField(
              style: Styles.normalTextStyle,
              controller: _phoneTextController,
              inputFormatters: [
                new BlacklistingTextInputFormatter(new RegExp('[\\.|\\,|\\-]')),
              ],
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value.length == 0) {
                  return "Lütfen telefon numaranızı girin.";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  //  labelText: "Telefon Numaranız",
                  hintStyle: Styles.customNormalTextStyle(fontSize: 13),
                  hintText: "Numaranızı girin",
                  labelStyle: Styles.customNormalTextStyle(
                    fontSize: 16,
                  ))),
        ),
        SpaceH16(),
        new Container(
          height: 65,
          width: 250,
          decoration: BoxDecoration(
            boxShadow: [Shadows.primaryShadow],
            color: Color.fromRGBO(255, 255, 255, 0.3),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.only(
            left: 10,
            right: 50,
          ),
          margin: EdgeInsets.only(left: 10.0, right: 10.0),
          child: new TextFormField(
            style: Styles.normalTextStyle,
            controller: _emailTextController,
            validator: _validateEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              //  labelText: "E-posta*",
              hintText: 'E-posta',
              hintStyle: Styles.customNormalTextStyle(
                  fontSize: 13, color: Colors.white),
              labelStyle: Styles.customNormalTextStyle(fontSize: 16),
            ),
          ),
        ),
        SpaceH16(),
        new Container(
          height: 65,
          width: 250,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.3),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.only(
            left: 10,
            right: 50,
          ),
          margin: EdgeInsets.only(left: 10.0, right: 10.0),
          child: new TextFormField(
              style: Styles.customNormalTextStyle(),
              obscureText: true,
              controller: _passwordTextController,
              validator: (value) {
                if (value.length == 0) {
                  return "Şifre geçersiz";
                } else if (value.length < 8) {
                  return "En az 8 karakter";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 20,
                  ),
                  //  labelText: "Password*",
                  hintStyle: Styles.customNormalTextStyle(fontSize: 13),
                  hintText: "Şifre oluştur",
                  labelStyle: Styles.customNormalTextStyle(fontSize: 16))),
        ),
        SpaceH16(),
        new PotbellyButton(
          StringConst.REGISTER,
          onTap: () => _signUpButtonTaped(),
        ),
        TextButton(
            onPressed: () {
              print("TextButton");
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => LoginScreen()));
            },
            child: Text("Hesabınız varsa giriş yapın.")),
      ],
    );
  }

  //onPressed: () => _signUpButtonTaped(),
  String _validateFields(String text) {
    if (text.length == 0) {
      return "Boş kalmamalı";
    } else {
      return null;
    }
  }

  _signUpButtonTaped() {
    FocusScope.of(context).requestFocus(new FocusNode());
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      //sign up user..

    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }
}

String _validateEmail(String email) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (regex.hasMatch(email))
    return null;
  else
    return "Geçerli bir e-posta girin";
}
