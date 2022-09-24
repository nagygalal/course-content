import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scoffold_widget/auth/login_sceen.dart';
import 'package:scoffold_widget/auth/register_screen.dart';
import 'package:scoffold_widget/providers/category_provider.dart';
import 'package:scoffold_widget/providers/home_provider.dart';
import 'package:scoffold_widget/providers/register_provider.dart';
import 'package:scoffold_widget/screen_tasks.dart';
import 'package:scoffold_widget/screens/bottom_nav.dart';
import 'package:scoffold_widget/screens/home_screen.dart';
import 'package:scoffold_widget/statemangent.dart';


void main() {
  runApp( 
     
     MyApp(),
    
    
   );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>HomeProvider()),
        ChangeNotifierProvider(create: (context)=>CategoryProvider()),
        ChangeNotifierProvider(create: (context)=>RegisterProvider()),

    ],
    child: MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    
      home: LoginScreen(),
    ),
    );
  }
}

