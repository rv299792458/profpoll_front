import 'package:flutter/material.dart';
import 'package:profpoll_front/pages/login.page.dart';
import 'dart:html' as html;


class AboutTab extends StatefulWidget {
  @override
  _AboutTabState createState() => _AboutTabState();
}

class _AboutTabState extends State<AboutTab> {
  final String name = "Anonymous", avatar = "myAvatar.jpg";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                //backgroundColor: Colors.blueAccent,
                backgroundImage: Image.asset("assets/myAvatar.jpg",scale: 2,).image,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'LilyScriptOne',
                  color: Colors.greenAccent,
                  fontSize: 40.0
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Hello Mate Vote for the best",
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 20
                ),
              ),
              SizedBox(
                height: 30,
              ),
            
             name=="Anonymous"?Column(
               children: [
                 FlatButton(
                   child: Text("LOGIN", style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 20
                )),

                onPressed: (){
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginPage()),
  );
                },
                 ),
                 FlatButton(
                   child: Text("REGISTER", style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 20
                )),
                 )
               ],
             ):FlatButton(
                   child: Text("LOGOUT", style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 20
                )),

                onPressed: (){
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginPage()),
  );
                },
                 ),
            
            ],
          ),
      ),
    );
  }
}
