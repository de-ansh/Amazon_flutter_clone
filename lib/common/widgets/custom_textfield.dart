import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hints;
  const CustomTextField({super.key, required this.controller, required this.hints});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      
      decoration: InputDecoration(
        hintText: hints,
        border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black38,
            )
        ),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black38,

            )
        ),
      ),
      validator: (val){},
    );
  }
}