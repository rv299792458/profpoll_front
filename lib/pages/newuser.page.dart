import 'package:flutter/material.dart';
import 'package:profpoll_front/widget/buttonNewUser.dart';
import 'package:profpoll_front/widget/newEmail.dart';
import 'package:profpoll_front/widget/newName.dart';
import 'package:profpoll_front/widget/password.dart';
import 'package:profpoll_front/widget/singup.dart';
import 'package:profpoll_front/widget/textNew.dart';
import 'package:profpoll_front/widget/userOld.dart';

class NewUser extends StatefulWidget {
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blueGrey, Colors.lightBlueAccent]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SingUp(),
                    TextNew(),
                  ],
                ),
                NewNome(),
                NewEmail(),
                PasswordInput(),
                ButtonNewUser(),
                UserOld(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}