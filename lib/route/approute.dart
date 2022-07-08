import 'package:get/get.dart';
import 'package:myfirebaseauth/screen/forgetpassword_screen.dart';
import 'package:myfirebaseauth/screen/home_screen.dart';
import 'package:myfirebaseauth/screen/login_screen.dart';
import 'package:myfirebaseauth/screen/signup_screen.dart';
import 'package:myfirebaseauth/screen/splash_screen.dart';

abstract class Routes{
  static const initial = '/';
  static const logInScreen = '/logInScreen';
  static const signUpScreen = '/signUpScreen';
  static const forgotScreen = '/forgotScreen';
  static const homeScreen = '/homeScreen';


  static final pages = [
    GetPage(name: Routes.initial, page: ()=> SplashScreen()),
    GetPage(name: Routes.logInScreen, page: ()=> LoginScreen()),
    GetPage(name: Routes.signUpScreen, page: ()=> SignUpScreen()),
    GetPage(name: Routes.forgotScreen, page: ()=> ForgotPasswordScreen()),
    GetPage(name: Routes.homeScreen, page: ()=> HomeScreen()),
  ];
}