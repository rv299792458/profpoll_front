import 'package:flutter/material.dart';
import 'package:profpoll_front/tabs/AboutTab.dart';
import 'package:profpoll_front/tabs/SkillTab.dart';
import 'package:profpoll_front/tabs/ProjectTab.dart';


class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = [
    AboutTab(),
    SkillTab(),
    ProjectTab(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ProfPoll!",style: TextStyle(fontFamily: "LilyScriptOne",fontWeight: FontWeight.w400,fontSize: 25),)
      ),
      body: Center(
        child: tabWidgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("About")),
          BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center), title: Text("Professors")),
          BottomNavigationBarItem(
              icon: Icon(Icons.brush), title: Text("My Reviews"))
        ],
        currentIndex: _selectedIndex,

        onTap: (index)=>setState(
            (){_selectedIndex=index;}
             // ()=>_selectedIndex=index
        ),
      ),



    );
  }
}
