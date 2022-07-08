import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfirebaseauth/firebase.dart';
import 'package:myfirebaseauth/route/approute.dart';
import 'package:myfirebaseauth/screen/forgetpassword_screen.dart';
import 'package:myfirebaseauth/screen/home_screen.dart';
import 'package:myfirebaseauth/screen/login_screen.dart';
import 'package:myfirebaseauth/screen/signup_screen.dart';
import 'package:myfirebaseauth/screen/splash_screen.dart';
void main()async{
  WidgetsFlutterBinding();
  await Firebase.initializeApp();
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyFireBaseAuth',
      getPages: Routes.pages,
      initialRoute: Routes.initial,
    );
  }
}
