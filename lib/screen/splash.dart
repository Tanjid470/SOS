

import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:edtech/constants/app_colors.dart';
import 'package:edtech/screen/Authentication/login_From.dart';
import 'package:edtech/screen/Dashboard/dashBoard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
    super.initState();
  }
 


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSplashScreen(
          splash:const Text("Softmax",style: TextStyle(color: Colors.white,fontSize:70 ),),
          //  Icon(Icons.music_note,color: AppColors.bgcolor,size: 100,), 
          splashIconSize: 100,
          duration: 150,
          animationDuration: Duration(seconds: 2),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: AppColors.purple,
          nextScreen: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Home();
          } else {
            return const LoginForm();
          }
        },
          ), 
        ),
      )
    );
  }
}