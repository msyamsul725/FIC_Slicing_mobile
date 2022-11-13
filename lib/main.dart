import 'package:fhe_template/setup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'module/navigation/view/navigation_view.dart';

void main() async {
  await initialize();

  Widget mainView = const BasicMainNavigationView();
  if (FirebaseAuth.instance.currentUser != null) {
    mainView = Container();
  }

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: mainView,
    ),
  );
}
