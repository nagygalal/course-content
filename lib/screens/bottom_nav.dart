// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables



import 'package:flutter/material.dart';
import 'package:scoffold_widget/screens/category_screen.dart';
import 'package:scoffold_widget/screens/home_screen.dart';
import 'package:scoffold_widget/screens/profile_screen.dart';


class BottomNav extends StatefulWidget {
  BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex=0;
  List<Widget>pages=[
     HomeScreen(),
     CategoryScreen(),
    ProfileScreen(),
   
  
  ];
  List<String>title=[
    "MyHome",
    "Category",
    "MyAccount"
  ];
  
  @override
  Widget build(BuildContext context) {
    print("context");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(title[currentIndex],style: TextStyle(color:Colors.white),),
        centerTitle: true,
        elevation: 0.0,
         //leading:Center(child:Icon(Icons.search,color: Colors.white,size:24.0 ,)),
        // actions: [
        //  Center(child: Text("menu",style: TextStyle(color:Colors.white),)),
         
      
        // ],
      ),
      //.*******************************************************************************************************
      body: pages[currentIndex],
      // Center(
      //   child: Text("Home page",style: TextStyle(color: Colors.blue,fontSize: 50.0),),
      // ),
      //************************************************************************ */
      drawer:Drawer(
        backgroundColor:  Colors.white,
        child: Center(child: Text("menu",style: TextStyle(color: Colors.red)),),
      ),
      
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: currentIndex,
        unselectedItemColor: Colors.blue,
        selectedItemColor:Colors.red ,
        type: BottomNavigationBarType.fixed,
        onTap: (int index){
          setState(() {
            currentIndex=index;
            print("setstate");
          });
          print("current "+currentIndex.toString());
        },
       // type:BottomNavigationBarType.fixed ,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:Icon(Icons.home,),
            label: "MyHome" ,
          ),
           BottomNavigationBarItem(
            icon:Icon(Icons.favorite),
            label: "Category"  
          ),
           BottomNavigationBarItem(
            icon:Icon(Icons.person),
            label: "MyAccount"  
          )
          
        ],
      ) ,

    );
  }
}