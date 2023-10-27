import 'package:flutter/material.dart';

import '../common/color_extension.dart';

enum BorderButtonType { active, inactive }

class BorderButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final BorderButtonType type;
  const BorderButton(
      {super.key,
      required this.title,
      this.type = BorderButtonType.active,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 200,
        height: 51,
        padding: const EdgeInsets.symmetric(vertical: 11),
        decoration: BoxDecoration(
            border: Border.all(
                color: type == BorderButtonType.active
                    ? TColor.primary
                    : TColor.gray.withOpacity(0.5),
                width: 1),
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: TColor.primary, fontSize: 20, fontFamily: "BlackOpsOne"),
        ),
      ),
    );
  }
}
