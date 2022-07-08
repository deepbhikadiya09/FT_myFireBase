import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myfirebaseauth/screen/home_screen.dart';
import 'package:myfirebaseauth/screen/login_screen.dart';
import 'package:myfirebaseauth/screen/signup_screen.dart';

import '../route/approute.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void initState() {
    goNextScreen();
    super.initState();
  }


  goNextScreen()async{
    Future.delayed(const Duration(milliseconds: 2500), () async {
      if (auth.currentUser==null) {
        Get.offAllNamed(Routes.logInScreen);
      } else {
        Get.offAllNamed(Routes.homeScreen);
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "asset/img/logo.png",
                height: 150,
                width: 150,
              ),
            ],
          ),
        ),
    );
  }
}
