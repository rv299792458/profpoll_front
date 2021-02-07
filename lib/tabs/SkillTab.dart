import 'package:flutter/material.dart';
import 'package:profpoll_front/api/GetData.dart';
import 'package:profpoll_front/TileAnsConstant/InfoTab.dart';
import 'package:profpoll_front/TileAnsConstant/Tile.dart';

int index=0;
class SkillTab extends StatefulWidget {
  @override
  _SkillTabState createState() => _SkillTabState();
}

class _SkillTabState extends State<SkillTab> {

var listOfProf;
  @override
  void initState() {
    // TODO: implement initState
    index=0;
     listOfProf = thisGetData() ;
    super.initState();
    
  }

Future thisGetData()async{

String url = "http://192.168.43.189:8000/api/list/?format=json";
// String url = "https://randomuser.me/api/";

GetData obj = new GetData(url:url);
List<dynamic> response = await obj.getData();

print(response);
print(response.runtimeType);
print(response.length);
//print("hello");
return response;

}

  @override
  Widget build(BuildContext context) {
   // print("hello1");
    return Scaffold(
      //appBar: Text("appbar"),

      body: Row(


        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Container(
             // width: 600,
              child: ListView(
                shrinkWrap: false,
              children: [
                GestureDetector(

                  onTap: ()=>setState((){
                    index=0;
                    
                    }),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ProfTile("Prof. Ravi Kumar", "MSC","Professor","ranade65@nith.ac.in", "https://portfolios.nith.ac.in/index.php?/nith/prof-ravi-kumar769",4,5),
                  ),
                ),

                // Ayush Tab
                GestureDetector(

                  onTap: ()=>setState((){
                    index=1;
                    
                    }),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ProfTile("Dr. Vishal Singh", "MSC","Assistant Professor","vishalchib@nith.ac.in", "https://portfolios.nith.ac.in/index.php?/nith/dr-vishal-singh",4,5),
                  ),
                ),


                 GestureDetector(

                  onTap: ()=>setState((){
                    index=2;
                    
                    }),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ProfTile("Dr. Rita Maurya", "MSC","Assistant Professor","ritam@nith.ac.in", "https://portfolios.nith.ac.in/index.php?/nith/dr-rita-mourya",4,5),
                  ),
                ),
                  GestureDetector(

                  onTap: ()=>setState((){
                    index=3;
                    
                    }),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ProfTile("Dr. Nitesh Kumar", "msc","Assistant Professor","nitesh@nith.ac.in", "https://portfolios.nith.ac.in/index.php?/nith/dr-nitesh-kumar",4,5),
                  ),
                ),

                  GestureDetector(

                  onTap: ()=>setState((){
                    index=0;
                    
                    }),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ProfTile("Dr. Raj Bahadur Singh", "msc","Assistant Professor","raj@nith.ac.in", "https://portfolios.nith.ac.in/index.php?/nith/dr-raj-bahadur-singh",4,5),
                  ),
                ),
              ],
        ),
            ),
          ),

          Expanded(flex:2,child: InfoTab(index)),

        ]
      ) ,
    );
  }
}
