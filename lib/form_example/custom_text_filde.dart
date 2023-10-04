// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

typedef String? Validation(String? value);

// ignore: must_be_immutable
class CustomeTextFiled extends StatelessWidget {
  TextEditingController controller;
  String title;
  Validation fun_valedation;
  CustomeTextFiled({
    Key? key,
    required this.controller,
    required this.title,
    required this.fun_valedation,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        validator: fun_valedation,
        controller: controller,
        decoration: InputDecoration(
            hintText: title,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}
