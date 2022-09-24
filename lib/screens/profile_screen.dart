// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
   ProfileScreen({Key? key}) : super(key: key);
 var name=TextEditingController();
 var phone=TextEditingController();
 var pass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            height: 250.0,
            color: Colors.white,
            child: Stack(


             //alignment: AlignmentDirectional.topCenter,
              children: [
                Container(
                  height: 150.0,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                  child: Text("profile image",),
    
                ),
                Positioned(
                  top: 105,
                  left: 150.0,
                  child: Container(
                    height: 100.0,
                    width: 100,
                    alignment: Alignment.center,
                  
                    child: Icon(Icons.camera),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                        color: Colors.grey.withOpacity(.8),
                    ),
                    
                  ),
                ),
                //  Container(
                //   height: 100.0,
                //   width: 100,
                //   color: Colors.black,
                //   child: Text("container one"),
    
                // ),
              ],
            ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextFormField(
            controller: name,
            decoration: InputDecoration(
              label: Text("name"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(color: Colors.blue)
              )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
          child: TextFormField(
            controller: phone,
            decoration: InputDecoration(
              label: Text("phone"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(color: Colors.blue)
              )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
          child: TextFormField(
            controller: pass,
            decoration: InputDecoration(
              label: Text("password"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(color: Colors.blue)
              )
            ),
          ),
        ),
        ],
      ),
    );
    // return Column(
    //   //mainAxisSize: MainAxisSize.min,
    //   children: [
   
    //    Text("data"),
    //    Text("data"),
    //    Container(
    //     alignment: Alignment.center,
    //     margin: EdgeInsets.symmetric(horizontal: 10.0),
    //     height: 200,
    //     width: 600.0,
    //     child: Column(
        
    //       children: [
    //         Row(
            
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           children: [
    //             Container(
    //               margin: EdgeInsets.symmetric(horizontal: 5),
    //               alignment: Alignment.center,
    //               height: 60.0,
    //               width: 60.0,
                  
    //               decoration: BoxDecoration(
    //                 color: Colors.lightBlue,
    //                 shape: BoxShape.circle),
    //               child: Text("myImage"),
    //             ),
    //              SizedBox(width: 10.0,),
    //              Text("Hi,iam nagy"),   
    //           ],
    //         ),
           
    //        Text("hi,Iam student at Mu")
    //       ],
    //     ),
        
    //     decoration: BoxDecoration(
    //       color: Colors.grey.withOpacity(.2),
    //       border: Border.all(color: Colors.black),

    //       borderRadius: BorderRadius.circular(10.0)
    //     ),
    //    )
       
    //   ],
    // ) ;
    // Center(
    //   child: InkWell(
    //     onTap: (){
    //       Navigator.of(context)
    //       .pushReplacement(MaterialPageRoute(builder: (context){
    //         return ScreenOne();
    //       }));
    //     },
    //     child: Container(
    //       alignment: Alignment.center,
    //       color: Colors.red,
    //       height: 60.0,
    //       width: 120.0,
    //       child: Text("nave to page one")),)
    // );
  }
}