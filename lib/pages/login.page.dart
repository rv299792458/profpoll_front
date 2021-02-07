import 'package:flutter/material.dart';
import 'package:profpoll_front/widget/button.dart';
import 'package:profpoll_front/widget/first.dart';
import 'package:profpoll_front/widget/forgot.dart';
import 'package:profpoll_front/widget/inputEmail.dart';
import 'package:profpoll_front/widget/inputEmail2.dart';
import 'package:profpoll_front/widget/password.dart';
import 'package:profpoll_front/widget/textLogin.dart';
import 'package:profpoll_front/widget/verticalText.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blueGrey[900], Colors.blueGrey[600]]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(children: <Widget>[
                  VerticalText(),
                  TextLogin(),
                ]),
                InputEmail(),
                InputEmail2(),
                PasswordInput(),
                ButtonLogin(),
                FirstTime(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}