import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:html' as html;

Material SkillTile(String name,String url,String logo)
{
  return Material(
  color: Colors.white,
  elevation: 14.0,
  shadowColor: Colors.black87,
  borderRadius: BorderRadius.only(topRight: Radius.circular(24.0),bottomLeft: Radius.circular(24.0)),
  child: Container(
//    height: 200,
//    width: 450,
    decoration: new BoxDecoration(
      image: new DecorationImage(image: AssetImage("assets/darkSkill.png",),
      fit: BoxFit.fill

      )
      ),

    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/icons/dsaIcon.png",
            scale: 5,

          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 0.0),
                child: Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 10,),
              FlatButton.icon(
                icon: Icon(
                  Icons.add_to_home_screen,
                ),
                label: Text("Related Link"),
                onPressed: ()=>html.window.open(url, "Rahul"),
              )
            ],
          ),
        ],
      ),
    ),
  ),
);
}

Material ProfTile(String name,String dep,String designation, String email,String url,int rating ,int countRating )
{
//  final String name = "";
//  final String url = "https://github.com/rv299792458";
return Material(
  color: Colors.white,
  elevation: 14.0,
  shadowColor: Colors.black87,
  borderRadius: BorderRadius.only(topRight: Radius.circular(24.0),bottomLeft: Radius.circular(24.0)),
  child: Container(
//    height: 200,
//    width: 450,
    decoration: new BoxDecoration(
      image: new DecorationImage(image: AssetImage("assets/darkSkill.png",),
      fit: BoxFit.fill

      )
      ),

    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/icons/dsaIcon.png",
            scale: 5,

          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 0.0),
                child: Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 10,),
                Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 0.0),
                child: Text(
                  dep,
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 0.0),
                child: Text(
                  email,
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 0.0),
                child: Text(
                  rating.toString()+"/5 --- "+countRating.toString()+" votes in total",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 10,),

              FlatButton.icon(
                icon: Icon(
                  Icons.add_to_home_screen,
                ),
                label: Text("Visit Portfolio"),
                onPressed: ()=>html.window.open(url, "Rahul"),
              )
            ],
          ),
        ],
      ),
    ),
  ),
);
}