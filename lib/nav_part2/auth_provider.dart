import 'package:flutter/material.dart';
import 'package:nav_app/nav_part2/screen2.dart';
import 'package:string_validator/string_validator.dart';

import 'app_router.dart';

class AuthProvider extends ChangeNotifier {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

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

  String? validateUsername(String? value) {
    if (value?.isEmpty ?? true) {
      return "You have to enter your username";
    } else if (value!.length < 5) {
      return "your should enter 5 characters at least";
    } else {
      return null;
    }
  }

  String? passwordValedation(String? value) {
    if (value!.length < 6) {
      return "* required more than 6 digites";
    }
  }

  String? validateEmail(String? value) {
    if (value?.isEmpty ?? true) {
      return "* required field";
    } else if (!isEmail(value!)) {
      return "Incorrect email syntax";
    }
  }
}
