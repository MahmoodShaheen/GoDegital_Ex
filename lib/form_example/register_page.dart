import 'package:flutter/material.dart';
import 'package:nav_app/form_example/custom_chackBox.dart';
import 'package:provider/provider.dart';

import '../nav_part2/auth_provider.dart';
import 'custom_text_filde.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        CustomeTextFiled(
            title: "User Name",
            controller: Provider.of<AuthProvider>(context).userNameController,
            fun_valedation:
                Provider.of<AuthProvider>(context).validateUsername),
        CustomeTextFiled(
            title: "Email",
            controller: Provider.of<AuthProvider>(context).userNameController,
            fun_valedation: Provider.of<AuthProvider>(context).validateEmail),
        CustomeTextFiled(
            title: "Password",
            controller: Provider.of<AuthProvider>(context).userNameController,
            fun_valedation:
                Provider.of<AuthProvider>(context).passwordValedation),
        CustomChackBox(),
        const Spacer(),
        ElevatedButton(
            onPressed: Provider.of<AuthProvider>(context).checkLogin,
            child: const Text("Log in")),
      ],
    ));
  }
}
