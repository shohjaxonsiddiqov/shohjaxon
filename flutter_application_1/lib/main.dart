


import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Amaliyot(),
  ));
}

class Amaliyot extends StatefulWidget {
  const Amaliyot({Key? key}) : super(key: key);

  @override
  State<Amaliyot> createState() => _AmaliyotState();
}

class _AmaliyotState extends State<Amaliyot> {
  TextEditingController vali = TextEditingController();
  String nom = "";

  int selectedIndex = -1; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[900],
                ),
                height: 30,
                child: TextField(
                  controller: vali,
                  obscureText: false,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    labelText: "Search",
                    prefixIcon: Icon(Icons.search, color: Colors.white),
                    labelStyle: TextStyle(color: Colors.grey),
                    hintStyle: TextStyle(color: Colors.white),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(width: 50),
            Icon(Icons.notifications_none),
            SizedBox(width: 20),
            Icon(Icons.telegram),
            SizedBox(width: 20),
            Flexible(
              flex: 2,
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(colors: [Colors.orange, Colors.yellow]),
                ),
                child: FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_circle_outline, color: Colors.white),
                      SizedBox(width: 2),
                      Text(
                        "Add photo",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[800],
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 55, top: 50),
              child: ListTile(
                leading: Image.asset("img/ins.png"),
                title: Text(
                  "Instagram",
                  style: TextStyle(fontFamily: "a", fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 10,),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("img/18.jpg"),
            ),
            Center(child: Text("Qodirova Nozima", style: TextStyle(fontSize: 20, color: Colors.white))),
            Center(child: Text("@mi-nozi", style: TextStyle(fontSize: 18, color: Colors.grey))),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text("46", style: TextStyle(fontSize: 18, color: Colors.white)),
                            SizedBox(height: 10,),
                            Text("Posts", style: TextStyle(color: Colors.grey, fontSize: 15))
                          ],
                        ),
                      ),
                      SizedBox(width: 40,),
                      Container(
                        color: Colors.grey,
                        width: 1,
                        height: 50,
                      ),
                      SizedBox(width: 40,),
                      Container(
                        child: Column(
                          children: [
                            Text("2.8k", style: TextStyle(fontSize: 18, color: Colors.white)),
                            SizedBox(height: 10,),
                            Text("Foll", style: TextStyle(color: Colors.grey, fontSize: 15))
                          ],
                        ),
                      ),
                      SizedBox(width: 40,),
                      Container(
                        color: Colors.grey,
                        width: 1,
                        height: 50,
                      ),
                      SizedBox(width: 40,),
                      Container(
                        child: Column(
                          children: [
                            Text("458", style: TextStyle(fontSize: 18, color: Colors.white)),
                            SizedBox(height: 10,),
                            Text("Null", style: TextStyle(color: Colors.grey, fontSize: 15))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  color: Colors.grey,
                  width: 280,
                  height: 1.5,
                ),
              ],
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Icon(Icons.menu_rounded, color: selectedIndex == 0 ? Colors.red : Colors.white),
              ),
              title: Text("Feed", style: TextStyle(color: Colors.white)),
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              tileColor: Colors.transparent,
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Icon(Icons.search, color: selectedIndex == 1 ? Colors.red : Colors.white),
              ),
              title: Text("Explore", style: TextStyle(color: Colors.white)),
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              tileColor: Colors.transparent,
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Icon(Icons.notifications, color: selectedIndex == 2 ? Colors.red : Colors.white),
              ),
              title: Text("Notifications", style: TextStyle(color: Colors.white)),
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              
),
 ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Icon(Icons.telegram, color: selectedIndex ==  3? Colors.red : Colors.white),
              ),
              title: Text("Direct", style: TextStyle(color: Colors.white)),
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
              
),
 ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Icon(Icons.notifications, color: selectedIndex == 4 ? Colors.red : Colors.white),
              ),
              title: Text("Stats", style: TextStyle(color: Colors.white)),
              onTap: () {
                setState(() {
                  selectedIndex = 4;
                });
              },
              
),
 ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Icon(Icons.settings, color: selectedIndex == 5? Colors.red : Colors.white),
              ),
              title: Text("Settings", style: TextStyle(color: Colors.white)),
              onTap: () {
                setState(() {
                  selectedIndex = 5;
                });
              },
              
),
           
          ],
        ),
      ),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Stories",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
            Row(
              children: [
                Icon(
                  Icons.play_circle_outline_outlined,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Text(
                  "Watch All",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
       
       SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[800],
                    radius: 30,
                    child: Icon(Icons.add_circle_sharp,color: Colors.grey,size: 35,),
                  ),
                  SizedBox(width: 30,),
                  
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.yellow],
                  ),
                ),
                child: CircleAvatar(
                  radius: 46,
                  backgroundColor: Colors.transparent, 
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[800],
                    radius: 44,
                    child: CircleAvatar(
                      radius: 39,
                      backgroundImage: AssetImage("img/11.jpg"),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.yellow],
                  ),
                ),
                child: CircleAvatar(
                  radius: 46,
                  backgroundColor: Colors.transparent, 
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[800],
                    radius: 44,
                    child: CircleAvatar(
                      radius: 39,
                      backgroundImage: AssetImage("img/12.jpg"),
                    ),
                  ),
                ),
              ), SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.yellow],
                  ),
                ),
                child: CircleAvatar(
                  radius: 46,
                  backgroundColor: Colors.transparent, 
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[800],
                    radius: 44,
                    child: CircleAvatar(
                      radius: 39,
                      backgroundImage: AssetImage("img/13.jpg"),
                    ),
                  ),
                ),
              ), SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.yellow],
                  ),
                ),
                child: CircleAvatar(
                  radius: 46,
                  backgroundColor: Colors.transparent, 
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[800],
                    radius: 44,
                    child: CircleAvatar(
                      radius: 39,
                      backgroundImage: AssetImage("img/14.jpg"),
                    ),
                  ),
                ),
              ), SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.yellow],
                  ),
                ),
                child: CircleAvatar(
                  radius: 46,
                  backgroundColor: Colors.transparent, 
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[800],
                    radius: 44,
                    child: CircleAvatar(
                      radius: 39,
                      backgroundImage: AssetImage("img/15.jpg"),
                    ),
                  ),
                ),
              ), SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.yellow],
                  ),
                ),
                child: CircleAvatar(
                  radius: 46,
                  backgroundColor: Colors.transparent, 
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[800],
                    radius: 44,
                    child: CircleAvatar(
                      radius: 39,
                      backgroundImage: AssetImage("img/16.jpg"),
                    ),
                  ),
                ),
              ),
              CircleAvatar(
                radius: 46,
                backgroundColor: Colors.transparent, 
                child: CircleAvatar(
                  backgroundColor: Colors.grey[800],
                  radius: 44,
                  child: CircleAvatar(
                    radius: 39,
                    backgroundImage: AssetImage("img/17.jpg"),
                  ),
                ),
              ),
              CircleAvatar(
                radius: 46,
                backgroundColor: Colors.transparent, 
                child: CircleAvatar(
                  backgroundColor: Colors.grey[800],
                  radius: 44,
                  child: CircleAvatar(
                    radius: 39,
                    backgroundImage: AssetImage("img/18.jpg"),
                  ),
                ),
              )
                ],
              ),
            ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Feed",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            Row(
              children: [
                Text(
                  "Latest",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                SizedBox(width: 30),
                Text(
                  "Popular",
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 15,),
       StaggeredGrid.count(crossAxisCount: 2,
       mainAxisSpacing: 5,
       crossAxisSpacing: 10,
       children: [
      
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(1)),
          child: Column(
            children: [
              StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("img/1.jpg",fit: BoxFit.cover,))
                ),
                SizedBox(height: 5,),
                FittedBox(
                  child: Row(
                  
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("img/11.jpg"),
                      ),
                      SizedBox(width: 35,),
                      Icon(Icons.favorite_outline,color: Colors.grey[400],),
                      SizedBox(width: 7,),
                      Text("230",style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold),),
                      SizedBox(width: 7,),
                      Icon(Icons.messenger_outline_outlined,color: Colors.grey[400],),
                      SizedBox(width: 7,),
                      Text("15",style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(height: 12,)
            ],
          )),
          Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(1)),
          child: Column(
            children: [
              StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("img/2.jpg",fit: BoxFit.cover,))),
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("img/12.jpg"),
                      ),
                      SizedBox(width: 35,),
                      Icon(Icons.favorite_outline,color: Colors.grey[400],),
                      SizedBox(width: 7,),
                      Text("80",style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold),),
                      SizedBox(width: 7,),
                      Icon(Icons.messenger_outline_outlined,color: Colors.grey[400],),
                      SizedBox(width: 7,),
                      Text("5",style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(height: 12,)
            ],
          )),
              Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(1)),
          child: Column(
            children: [
              StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("img/3.jpg",fit: BoxFit.cover,))),
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("img/13.jpg"),
                      ),
                      SizedBox(width: 35,),
                      Icon(Icons.favorite_outline,color: Colors.grey[400],),
                      SizedBox(width: 7,),
                      Text("1120",style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold),),
                      SizedBox(width: 7,),
                      Icon(Icons.messenger_outline_outlined,color: Colors.grey[400],),
                      SizedBox(width: 7,),
                      Text("74",style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(height: 12,)
            ],
            
          )),
              Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(1)),
          child: Column(
            children: [
              StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("img/4.jpg",fit: BoxFit.cover,))),
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("img/14.jpg"),
                      ),
                      SizedBox(width: 35,),
                      Icon(Icons.favorite_outline,color: Colors.grey[400],),
                      SizedBox(width: 7,),
                      Text("450",style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold),),
                      SizedBox(width: 7,),
                      Icon(Icons.messenger_outline_outlined,color: Colors.grey[400],),
                      SizedBox(width: 7,),
                      Text("32",style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(height: 12,)
            ],
          )),
              Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(1)),
          child: Column(
            children: [
              StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("img/5.jpg",fit: BoxFit.cover,))),
                FittedBox(
                  child: Row(
                   
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("img/15.jpg"),
                      ),
                      SizedBox(width: 30,),
                      Icon(Icons.favorite_outline,color: Colors.grey[400],),
                      SizedBox(width: 7,),
                      Text("2899",style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold),),
                      SizedBox(width: 7,),
                      Icon(Icons.messenger_outline_outlined,color: Colors.grey[400],),
                      SizedBox(width: 7,),
                      Text("190",style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(height: 12,)
            ],
          )),
              Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(1)),
          child: Column(
            children: [
              StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("img/6.jpg",fit: BoxFit.cover,))),
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("img/16.jpg"),
                      ),
                      SizedBox(width: 35,),
                      Icon(Icons.favorite_outline,color: Colors.grey[400],),
                      SizedBox(width: 7,),
                      FittedBox(child: Text("2899",style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold),)),
                      SizedBox(width: 7,),
                      Icon(Icons.messenger_outline_outlined,color: Colors.grey[400],),
                      SizedBox(width: 7,),
                      Text("190",style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(height: 12,)
            ],
          )),
              Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(1)),
          child: Column(
            children: [
              StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("img/7.jpg",fit: BoxFit.cover,))),
                FittedBox(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("img/17.jpg"),
                      ),
                      SizedBox(width: 35,),
                      Icon(Icons.favorite_outline,color: Colors.grey[400],),
                      SizedBox(width: 7,),
                      Text("2899",style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold),),
                      SizedBox(width: 7,),
                      Icon(Icons.messenger_outline_outlined,color: Colors.grey[400],),
                      SizedBox(width: 7,),
                      Text("190",style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(height: 12,)
            ],
          )),
              Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(1)),
          child: Column(
            children: [
              StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("img/8.jpg",fit: BoxFit.cover,))),
                FittedBox(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("img/18.jpg"),
                      ),
                      SizedBox(width: 35,),
                      Icon(Icons.favorite_outline,color: Colors.grey[400],),
                      SizedBox(width: 7,),
                      Text("2899",style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold),),
                      SizedBox(width: 7,),
                      Icon(Icons.messenger_outline_outlined,color: Colors.grey[400],),
                      SizedBox(width: 7,),
                      Text("190",style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(height: 12,)
            ],
          )),
              Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(1)),
          child: Column(
            children: [
              StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("img/9.jpg",fit: BoxFit.cover,))),
                FittedBox(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("img/12.jpg"),
                      ),
                      SizedBox(width: 35,),
                      Icon(Icons.favorite_outline,color: Colors.grey[400],),
                      SizedBox(width: 7,),
                      Text("2899",style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold),),
                      SizedBox(width: 7,),
                      Icon(Icons.messenger_outline_outlined,color: Colors.grey[400],),
                      SizedBox(width: 7,),
                      Text("190",style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(height: 12,)
            ],
          )),
              Column(
                children: [
                  Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1)),
                            child: StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset("img/10.jpg",fit: BoxFit.cover,)))),
                              FittedBox(
                                child: Row(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 15,
                                                      backgroundImage: AssetImage("img/13.jpg"),
                                                    ),
                                                    SizedBox(width: 35,),
                                                    Icon(Icons.favorite_outline,color: Colors.grey[400],),
                                                    SizedBox(width: 7,),
                                                    Text("2899",style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold),),
                                                    SizedBox(width: 7,),
                                                    Icon(Icons.messenger_outline_outlined,color: Colors.grey[400],),
                                                    SizedBox(width: 7,),
                                                    Text("190",style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold),)
                                                  ],
                                                ),
                              ),
                SizedBox(height: 12,)
                ],
              ),
       
       ],
       ),
       
        
      ],
        ),
      ),
    )
    );
  }
}