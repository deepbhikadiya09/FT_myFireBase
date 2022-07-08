// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:myfirebaseauth/screen/home_screen.dart';
// import 'package:myfirebaseauth/screen/login_screen.dart';
// import 'package:myfirebaseauth/screen/signup_screen.dart';
//
// class AuthScreen extends StatefulWidget {
//   const AuthScreen({Key? key}) : super(key: key);
//
//   @override
//   State<AuthScreen> createState() => _AuthScreenState();
// }
//
// class _AuthScreenState extends State<AuthScreen> {
//
//   bool showLogInPage = true;
//
//   void toggleScreen() {
//     setState(() {
//       showLogInPage = !showLogInPage;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (showLogInPage) {
//       return LoginScreen();
//     } else {
//       return SignUpScreen();
//     }
//   }
// }
//
//
// class MainScreen extends StatefulWidget {
//   const MainScreen({Key? key}) : super(key: key);
//
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder<User?>(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return const HomeScreen();
//           } else {
//             return const AuthScreen();
//           }
//         },
//       ),
//     );
//   }
// }
//
