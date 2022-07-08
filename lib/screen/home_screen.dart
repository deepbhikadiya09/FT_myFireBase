import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../route/approute.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      /// APP BAR
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: width,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Text(
                "Welcome",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            Text(
              "Signed In : " + user.email!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "User Id : " + user.uid,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                showMyCupertinoDialoge();
              },
              child: const Text("Log out"),
            ),
          ],
        ),
      ),
    );
  }
  showMyCupertinoDialoge() {
    return showCupertinoModalPopup(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text("Are You Sure You Want to LogOut?"),
            actions: [
              CupertinoDialogAction(
                child: Text("No"),
                onPressed: () {
                  Get.back();
                },
              ),
              CupertinoDialogAction(
                textStyle: TextStyle(color: Colors.red),
                child: Text("Yes"),
                onPressed: () async {
                  FirebaseAuth.instance.signOut();
                  Get.offAllNamed(Routes.logInScreen);

                },
              ),
            ],
          );
        });
  }
}
