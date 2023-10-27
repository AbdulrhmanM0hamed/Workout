import 'package:flutter/material.dart';
import 'package:workout_fitness/common/color_extension.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({required this.hinttext, required this.ispass});

  final String hinttext;
  final bool ispass;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        style: TextStyle(color: TColor.white),
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: TColor.white)),
            hintText: '$hinttext',
            hintStyle: TextStyle(color: TColor.white)),
        obscureText: ispass,
      ),
    );
  }
}
