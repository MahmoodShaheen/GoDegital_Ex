import 'package:flutter/material.dart';

class CustomChackBox extends FormField<bool> {
  CustomChackBox({super.key})
      : super(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (x) {
              if (x != true) {
                return "you have to accept the condetione";
              }
            },
            initialValue: false,
            builder: (FormFieldState<bool> state) {
              return CheckboxListTile(
                  subtitle: state.hasError ? Text(state.errorText ?? "") : null,
                  title: const Text("Accept condition"),
                  value: state.value,
                  onChanged: state.didChange);
            });
}
