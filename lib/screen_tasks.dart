// import 'dart:ffi';

// import 'package:flutter/material.dart';

//*************Farida***************************** */

// class LoGin extends StatefulWidget {

//   @override
//   State<LoGin> createState() => _LoGinState();

// }

// class _LoGinState extends State<LoGin> {
// var formKey=GlobalKey<FormState>();
// bool showPassword=true;
//   @override
//   void initState() {
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body:
//         Padding(
//         padding: const EdgeInsets.symmetric(horizontal:10,vertical:60),
//     child: SingleChildScrollView(
//        child: Form(
//          key: formKey,
//          child: Column(

//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: [
//              Container(height:140.0,
//                  width:double.infinity,
//                  alignment: Alignment.center
//                  ,child: Image(image:NetworkImage("https://www.pngarts.com/files/3/Ecommerce-Shopping-Cart-Transparent-Image.png")))
//              ,Text("LOGIN",style: TextStyle(fontSize: 30.0,fontWeight:FontWeight.w500,color: Colors.black),),
//              SizedBox(height:2.0,),
//              Text("Login now to browse our hot offers",style: TextStyle(fontSize:18.0,fontWeight:FontWeight.w500,color: Colors.black38)),
//              SizedBox(height:15.0,),
//              TextFormField(decoration: InputDecoration(
//                  labelText: "Email",
//                  border: OutlineInputBorder(),prefixIcon: Icon(Icons.email_outlined)
//              ),keyboardType: TextInputType.emailAddress,
//                validator: (String ? value){
//                if(value!.isEmpty){
//                  return"Enter Your Email Please";
//                }
//                return null;
//                }
//              )
//              ,SizedBox(height:15.0,),
//              TextFormField(
//              obscureText: showPassword,decoration: InputDecoration(
//                  labelText: "Password",
//                  border: OutlineInputBorder(),prefixIcon: Icon(Icons.lock),

//               suffixIcon: IconButton(onPressed: (){
//                  setState(() {
//                    showPassword =!showPassword;
//                  });
//                },  icon:showPassword?(Icon(Icons.visibility)):(Icon(Icons.visibility_off)))
//              ),keyboardType: TextInputType.visiblePassword,
//                  validator: (String ? value){
//                    if(value!.isEmpty){
//                      return"The password is requird";
//                    }
//                    return null;
//                  }),
//              SizedBox(height:30.0,),
//              Center(
//                child: Container(
//                  decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(15.0),color: Colors.blue,),
//                    height:45.0,width:230.0,
//                 // color: Colors.blue,
//                  child: TextButton(onPressed: (){
//                  if(formKey.currentState!.validate()){
//                   //  Navigator.push(context,
//                   //      MaterialPageRoute(builder: (context) =>HomeScreen()));
//                  }
//                  }, child: Text("Login",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:22.0,),)),

//                ),
//              ),
//              SizedBox(height:20.0,),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: [
//                  Text("Don't have an account ?",style: TextStyle(fontSize: 20.0),)

//                  ,TextButton(onPressed: (){
//                   //  Navigator.push(context,
//                   //      MaterialPageRoute(builder: (context) =>Register()));
//                  }, child: Text("Register",style: TextStyle(fontSize: 20.0),))
//                ],
//              )

//            ],

//          ),
//        ),
//     )
//     ));
//   }
//   }
import 'package:flutter/material.dart';

///*********************************Start from here****yara********************************** */

// import 'package:flutter/material.dart';

// // ignore_for_file: prefer_const_constructors

// class LoginScreenTasks extends StatefulWidget {
//   const LoginScreenTasks({Key? key}) : super(key: key);

//   @override
//   State<LoginScreenTasks> createState() => _LoginScreenTasksState();
// }

// class _LoginScreenTasksState extends State<LoginScreenTasks> {
//   @override
//   var emailController = TextEditingController();
//   var passController = TextEditingController();
//   var FormKey = GlobalKey<FormState>();
//   bool isPass = true;

//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Padding(
//       padding: EdgeInsets.only(top: 50, left: 30, right: 30),
//       child: SingleChildScrollView(
//           reverse: true,
         
//             child: Form(
//               autovalidateMode: AutovalidateMode.always,
//               key: FormKey,
//               child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text("LOGIN",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 30)),
//                     SizedBox(height: 10),

//                     Text(
//                       "Login now to see our products!",
//                       style: TextStyle(color: Colors.grey),
//                     ),

//                     SizedBox(height: 35),

//                     // Email Form Field
//                     TextFormField(
//                       keyboardType: TextInputType.emailAddress,
//                       controller: emailController,
//                       onFieldSubmitted: (value) {
//                         print(value);
//                       },
//                       onChanged: (value) {
//                         print(value);
//                       },
//                       validator: (String? value) {
//                         if (value!.isEmpty) {
//                           return "please enter your email";
//                         }
//                       },
//                       decoration: InputDecoration(
//                           border: OutlineInputBorder(),
//                           labelText: "Email Address",
//                           prefixIcon: Icon(Icons.email),
//                           errorBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide(color: Colors.red)),
//                           focusedErrorBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide(color: Colors.red))),
//                     ),

//                     SizedBox(
//                       height: 15,
//                     ),

//                     // Password Form Field
//                     TextFormField(
//                       keyboardType: TextInputType.visiblePassword,
//                       controller: passController,
//                       obscureText: isPass,
//                       onFieldSubmitted: (value) {
//                         print(value);
//                       },
//                       onChanged: (value) {
//                         print(value);
//                       },
//                       validator: (String? value) {
//                         if (value!.length < 8) {
//                           return "your password must be 8 characters or more";
//                         }
//                       },
//                       decoration: InputDecoration(
//                           border: OutlineInputBorder(),
//                           labelText: "Password",
//                           prefixIcon: Icon(Icons.lock),
//                           suffixIcon: IconButton(
//                             onPressed: () {
//                               setState(() {
//                                 isPass = !isPass;
//                               });
//                             },
//                             icon: Icon(isPass
//                                 ? Icons.visibility_off
//                                 : Icons.visibility),
//                           ),
//                           errorBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide(color: Colors.red)),
//                           focusedErrorBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide(color: Colors.red))),
//                     ),
//                     SizedBox(
//                       height: 25,
//                     ),

//                     //Button
//                     Center(
//                         child: Container(
//                       child: MaterialButton(
//                         onPressed: () {
//                           print("email is" + emailController.text);
//                           print("password is" + passController.text);
//                           if (FormKey.currentState!.validate()) {
//                                 // Navigator.pushReplacement(
//                                 //     context,
//                                 //     MaterialPageRoute(
//                                 //         builder: (context) =>
//                                 //             HomeScreen()));
//                               }
//                         },
//                         child: Text(
//                           "Login",
//                           style: TextStyle(fontSize: 20, color: Colors.white),
//                         ),
//                       ),
//                       width: 300,
//                       height: 55,
//                       decoration: BoxDecoration(
//                           color: Colors.blue,
//                           borderRadius: BorderRadius.circular(20)),
//                     ))

//                     //Register button
//                     ,
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text("Don't have an account?"),
//                         TextButton(
//                              onPressed: () {
                              
//                             //     Navigator.pushReplacement(
//                             //         context,
//                             //         MaterialPageRoute(
//                             //             builder: (context) =>
//                             //                 RegisterScreen()));
//                              }
//                             ,
//                             child: Text("Register Now"))
//                       ],
//                     )
//                   ]),
//             ),
//           )),
//     );
//   }
// }
///*****************************************Start from here****************************************************** */

import 'package:flutter/material.dart';
class login extends StatelessWidget {

var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(),
    body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 40),
      child: Form(
key: formkey,
       child: SingleChildScrollView(
        child: Column(
          children: [

            Text('Login',style: TextStyle(fontSize: (50)),),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: ((value) {
                if(value!.isEmpty){
                  return "email address must not be empty";
                }

                return null;
              }
              ),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'EmailAddress',
                labelStyle: TextStyle(color: Colors.grey)
              ),
            ) ,
            SizedBox(
              height: 20,
            ),

            TextFormField(
              validator: (value) {
                if(value!.isEmpty){
                  return 'Password ot be empty ';
                }
                return null;
              },
              decoration:  InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password ',
                  labelStyle: TextStyle(color: Colors.grey),

                       ),
            ),
            ElevatedButton(onPressed:() {
              if(formkey.currentState!.validate());
            },  child: Text('Login')
            ),Row(
              children: [
                Text('I do not have an account'),
                TextButton(onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context) => Register(),));
                }, child: Text('Register'))

              ],
            )

          ],
        ),
       ),
      ),
     ),
    );
  }
}
