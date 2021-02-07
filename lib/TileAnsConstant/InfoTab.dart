import 'package:flutter/material.dart';
import 'package:profpoll_front/TileAnsConstant/Constant.dart';


const List<Text> Namelist=[Text("Prof. Ravi Kumar",style: kHeadingStyle,),
  Text("Dr. Vishal Singh",style: kHeadingStyle,),
  Text("Flutter",style: kHeadingStyle,),
  Text("Java Programming",style: kHeadingStyle,)];
const List<Text> Textlist = [Text("rv6023 - Awesome Professor ,Teaches Like a Father Very Helpful and understanding .",style: kInfoTextStyle,),
  Text("rv6023 - Awesome Professor ,Teaches Like a Father Very Helpful and understanding .",style: kInfoTextStyle,),
  Text("rv6023 - Awesome Professor ,Teaches Like a Father Very Helpful and understanding .",style: kInfoTextStyle,),

];
 List<Widget> Imagelist=[Image.asset("assets/RK.jpg"),
   Image.asset("assets/232.jpg"),
   Image.asset("assets/skillimg/flutter.png"),
   Image.asset("assets/skillimg/java.png")];
const List<Text> Linklist=[Text("Please Visit the profile here",style: kInfoTextStyle,),
  Text("Please Visit the profile here",style: kInfoTextStyle,),
  Text("Please Visit the profile here",style: kInfoTextStyle,),
  Text("Please Visit the profile here",style: kInfoTextStyle,)];

Material InfoTab(int index)
{
  return Material(

    child: Container(
      color: Colors.black38,
//      height: 400,
//      width: 400,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(flex:1,child: Center(child: Namelist.elementAt(index))),
            SizedBox(height: 30,),
            Expanded(flex:3,child: Imagelist.elementAt(index)),
            SizedBox(height: 30,),
          Expanded(flex:3,child: Textlist.elementAt(index)),
            SizedBox(height: 30,),
          Expanded(flex:1,child: Linklist.elementAt(index)),
          ],
        ),
      ),
    ),
  );
}
