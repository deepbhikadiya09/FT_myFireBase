import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../component/common_function.dart';
import '../route/approute.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  FocusNode emailLogInFocusNode = FocusNode();
  FocusNode passwordLogInFocusNode = FocusNode();
  RxBool showPass = false.obs;

  Future logInData() async {
    try {
      CustomDialogs.getInstance.showProgressDialog();

      if (emailController.text.isNotEmpty &
          passwordController.text.isNotEmpty) {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text.trim());
        CustomDialogs.getInstance.hideProgressDialog();

        Get.offAndToNamed(Routes.homeScreen);
      }
    } catch (e) {
      print(e);
    }
  }
}
