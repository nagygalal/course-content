// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:scoffold_widget/auth/register_screen.dart';

import '../screens/bottom_nav.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController mail=TextEditingController();
  TextEditingController password=TextEditingController();
  var formKey=GlobalKey<FormState>();
  bool isPass=true;
 
  // var formKey = GlobalKey<FormState>();
  //  var emailController = TextEditingController();
  //   var passwordController = TextEditingController();
  //   bool isPass=true;
  @override
  Widget build(BuildContext context) {
     var height=MediaQuery.of(context).size.height;
     var width=MediaQuery.of(context).size.width;
     String text="";
    
    return 
     Scaffold(
            // appBar: AppBar(),
            body: SingleChildScrollView(
              
              padding: EdgeInsets.symmetric(vertical: 80.0,horizontal: width*.07) ,
              child: Center(
                child: Form(
                  autovalidateMode: AutovalidateMode.always,
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Image.network("https://img.freepik.com/free-vector/best-shop-supermarket-mall-cart-mobile-wheeled-shopping-trolley_39422-4.jpg?w=740&t=st=1661183786~exp=1661184386~hmac=8aecd9595db004b9db8dd0d71311ca227ad98ea4c982c13b6f41827b9bf78c36"),
                      Container(
                        height: 80.0,
                        width: 100.0,
                       alignment: Alignment.center,
                        decoration: BoxDecoration(
                           color: Colors.red,
                          image: DecorationImage(
                            image: NetworkImage("https://img.freepik.com/free-vector/best-shop-supermarket-mall-cart-mobile-wheeled-shopping-trolley_39422-4.jpg?w=740&t=st=1661183786~exp=1661184386~hmac=8aecd9595db004b9db8dd0d71311ca227ad98ea4c982c13b6f41827b9bf78c36"),
                            fit: BoxFit.fill
                          )
                        ),
                        child:Text("login",style: TextStyle(color: Colors.black,fontSize: 20),),
                      ),
                        // Image.asset("assets/image/basketMarket.png",fit: BoxFit.cover,)),
                      // Container(
                      //   color: Colors.red,
                      //   height: 200.0,
                      //   child: Image.network("https://img.freepik.com/free-vector/best-shop-supermarket-mall-cart-mobile-wheeled-shopping-trolley_39422-4.jpg?w=740&t=st=1661183786~exp=1661184386~hmac=8aecd9595db004b9db8dd0d71311ca227ad98ea4c982c13b6f41827b9bf78c36")
                      // ),
                      Text(
                        'LOGIN',
                        style:
                            Theme.of(context).textTheme.headline4!.copyWith(
                                  color: Colors.black,
                                ),
                      ),
                      Text(
                        'Login now to browse our hot offers',
                        style:
                            Theme.of(context).textTheme.bodyText1!.copyWith(
                                  color: Colors.grey,
                                ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      TextFormField(

                        controller: mail,
                        keyboardType:TextInputType.emailAddress ,
                        onTap: (){
                          print("click ");
                        },
                        onChanged: (String value){
                          print("val "+value.toString());
                
                
                        },
                        validator: (String? value){
                          if(value!.length<10){
                            return "email is empty";
                          }

                        },
                
                         //controller: emailController,
                         //keyboardType: TextInputType.emailAddress,
                          // validator: (String? value){
                          // if (value!.isEmpty) {
                          //   return 'please enter your email address';
                          // }
                
                      //   },
                         decoration: InputDecoration(
                          label:Text("Email Address"),
                          prefixIcon:  Icon(Icons.email_outlined),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey.withOpacity(.2))
                          ),
                          focusedBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.blue)
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)
                          ),
                          focusedErrorBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)
                          ), 
                          
                          //  errorBorder:OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(10),
                          //   borderSide: BorderSide(color: Colors.red)
                          // ),  
                          // focusedErrorBorder: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(10),
                          //   borderSide: BorderSide(color: Colors.red)
                          // ),
                
                          
                         ),
                      ),
                      
                      SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                         controller: password,
                         keyboardType: TextInputType.visiblePassword,
                         obscureText: isPass,
                          validator: (String? value){
                          if(value!.length<=6){
                            return "please enter correct  password";
                          }

                        },
                
                         //controller: passwordController,
                        //keyboardType: TextInputType.visiblePassword,
                        //  obscureText: isPass,
                        //  validator: (String? value){
                        //   if (value!.isEmpty) {
                        //       return 'password is too short';
                        //     }
                
                        //  },
                         decoration: InputDecoration(
                          label:Text("Password"),
                          
                          prefixIcon:  Icon(Icons.lock_outline),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey.withOpacity(.2))
                          ),
                          focusedBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.blue)
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)
                          ),
                          focusedErrorBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)
                          ),  
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  isPass=!isPass;
                                });
                            // setState(() {
                            //   isPass=!isPass;
                            // });
                          },
                          icon:  Icon(isPass?Icons.visibility_off:Icons.visibility),),
                          
                          // errorBorder:OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(10),
                          //   borderSide: BorderSide(color: Colors.red)
                          // ),
                          // focusedErrorBorder: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(10),
                          //   borderSide: BorderSide(color: Colors.red)
                          // ),
                           
                          // suffixIcon: IconButton(onPressed: (){
                          //   setState(() {
                          //     isPass=!isPass;
                          //   });
                          // },
                          // icon:  Icon(isPass?Icons.visibility:Icons.visibility_off),)
                          
                         ),
                      ),
                     
                     
                      SizedBox(
                        height: 30.0,
                      ),
                     Center(
                       child: InkWell(
                        onTap: (){
                          print("mail "+mail.text.toString());
                          if(formKey.currentState!.validate()){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNav()));
                          }
                         
                          // if (formKey.currentState!.validate()) {
                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNav()));
                
                
                          // }
                        },
                        child: Container(
                          height: 40.0,
                          width: 200.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text("Login",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w600),),
                
                       )),
                     ),
                      SizedBox(
                        height: 30.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account?',
                          ),
                          GestureDetector(
                             onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                             },
                            child: Text("Register",style: TextStyle(color: Colors.blue),),
                          )
                          
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}






/*SingleChildScrollView (
        padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              cursorColor: Colors.red,
             // initialValue: "nagy",
              keyboardType: TextInputType.name,
              maxLength: 20,
              maxLines: 2,
              minLines: 1,
              textAlign: TextAlign.end,
            decoration: InputDecoration(
               hintText:"enter your name" ,
               hintStyle: TextStyle(color: Colors.black,fontSize: 15.0),
               hintMaxLines: 2,
              // icon: Icon(Icons.person),
               
              //  border: OutlineInputBorder(
      
              //  ),
              //  enabledBorder: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(20.0),
              //   borderSide: BorderSide(color: Colors.red)
              //  ),
              //  focusedBorder:  OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(20.0),
              //   borderSide: BorderSide(color: Colors.black)
              //  ),
               //disabledBorder: OutlineInputBorder(),
              //  filled: true,
              //  fillColor: Colors.red,
               //enabled: false,
               
               //label: Text("kkk"),
               //labelText: "fffff"
               //prefix: Text("data",style: TextStyle(color: Colors.red),)
              //  prefixIcon: Icon(Icons.person) ,
              //  suffixIcon: Icon(Icons.star),
            ),
            )
          
          ],
        ),
      ),* */