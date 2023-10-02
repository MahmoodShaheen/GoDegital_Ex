import 'package:flutter/material.dart';
import 'package:nav_app/nav_part2/screen2.dart';

import 'app_router.dart';

class AuthProvider extends ChangeNotifier {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String correctUsername = "mahmood";
  String correctPassword = "123";
  checkLogin() {
    String userName = userNameController.text;
    String password = passwordController.text;
    if (userName == correctUsername && password == correctPassword) {
      AppRouter.gotoScreen(const Screen2());
      // navigation to home page
    } else {
      AppRouter.showCustomDialoug("Error", "Username or password is incorrect");
    }
  }
}
