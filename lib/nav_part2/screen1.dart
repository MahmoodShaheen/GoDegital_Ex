import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'auth_provider.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page1"),
      ),
      body: Consumer<AuthProvider>(builder: (context, pr, child) {
        return Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: pr.userNameController,
                decoration: InputDecoration(
                    hintText: "UserName",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: pr.passwordController,
                decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      pr.checkLogin();
                    },
                    child: const Text("Login")),
              )
            ],
          ),
        );
      }),
    );
  }
}
