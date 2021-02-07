import 'package:flutter/material.dart';
import 'dart:html' as html;

Material ProjectTile(String name,String url,String image)
{
//  final String name = "";
//  final String url = "https://github.com/rv299792458";
  return Material(
    color: Colors.white,
    elevation: 14.0,
    shadowColor: Colors.black,
    borderRadius: BorderRadius.only(topRight: Radius.circular(24.0),bottomLeft: Radius.circular(24.0)),
    child: Container(
      height: 200,
      width: 450,
      child: Row(

        children: [
          Image.asset(image),
          SizedBox(width: 25,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
              ),
              SizedBox(height: 20,),
              FlatButton.icon(
                icon: Icon(
                  Icons.add_to_home_screen,
                ),
                label: Text("Related Link11"),
                onPressed: ()=>html.window.open(url, "Rahul"),
              )
            ],
          ),
        ],
      ),
    ),
  );
}