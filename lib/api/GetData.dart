import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GetData
{
  GetData({@required this.url});
  final String url;
  Future getData() async{
    http.Response response =await http.get(url);
    print("done");
    if(response.statusCode==200)
    {
        String data = response.body;
        print("done");
        return jsonDecode(data);
      }
    else
      print(response.statusCode);
  }
}