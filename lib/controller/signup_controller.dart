import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../component/common_function.dart';
import '../route/approute.dart';

class SignUpController extends GetxController{
  RxBool showConfirmPass = false.obs;
  RxBool shoPass = false.obs;

  final emailSignUpController = TextEditingController();
  final passwordSignUpController = TextEditingController();
  final confirmPasswordSignUpController = TextEditingController();
  FocusNode emailSignUpFocusNode = FocusNode();
  FocusNode passwordSignUpFocusNode = FocusNode();
  FocusNode confirmPasswordSignUpFocusNode = FocusNode();
  Future signUpData() async {
    CustomDialogs.getInstance.showProgressDialog();
    if (emailSignUpController.text.isNotEmpty &
    passwordSignUpController.text.isNotEmpty &
    confirmPasswordSignUpController.text.isNotEmpty) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailSignUpController.text.trim(),
        password: passwordSignUpController.text.trim(),
      );
      CustomDialogs.getInstance.hideProgressDialog();
      Get.toNamed(Routes.homeScreen);
    }
  }
}