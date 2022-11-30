import 'package:flutter/material.dart';
import '../../extensions/extensions.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final bool obscureText;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final ValueNotifier<bool> _obscureTextValueNotifier;

  CustomTextFormField({
    Key? key,
    this.validator,
    this.controller,
    this.obscureText = false,
    required this.label,
  })  : _obscureTextValueNotifier = ValueNotifier<bool>(obscureText),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _obscureTextValueNotifier,
      builder: (_, obscureTextVNValue, child) => TextFormField(
        controller: controller,
        validator: validator,
        obscureText: obscureTextVNValue,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(fontSize: 15, color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          suffixIcon: obscureText
              ? IconButton(
                  onPressed: () =>
                      _obscureTextValueNotifier.value = !obscureTextVNValue,
                  icon: Icon(
                    obscureTextVNValue ? Icons.lock : Icons.lock_open,
                    color: context.primaryColor,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
