import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:stressify/home.dart';
import 'package:stressify/splash.dart';
import 'package:stressify/login.dart';
import 'ProductPage.dart';
import 'chat.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      //home: ChatScreen(),
      home: AnimatedSplashScreen(
        //splash: Icons.home,
        splash: 'images/splash.png',
        duration: 3000,
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.cyanAccent,
        
         nextScreen: LoginScreen()),

      routes: {
        '/productPage': (context) => ProductPage(),
      },
         
    );
  }
}

