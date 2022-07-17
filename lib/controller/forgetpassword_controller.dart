import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../component/common_function.dart';

class ForgetController extends GetxController {
  final forgetEmailController = TextEditingController();
  FocusNode forgetEmailFocusNode = FocusNode();

  Future resetPassword(BuildContext context) async {
    try {
      CustomDialogs.getInstance.showProgressDialog();

      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: forgetEmailController.text.trim());
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Password reset link sent! Check your Email"),
      ));
      CustomDialogs.getInstance.hideProgressDialog();
      Get.back();
    } catch (e) {
      print(e);
    }
  }
}
