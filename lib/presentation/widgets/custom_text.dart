import 'package:flutter/material.dart';

import '../../core/constants/fonts/text_font.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize; // Corrected to double
  final FontWeight? fontWeight; // Corrected to FontWeight

  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.ralewayStyle.copyWith(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 12, // Default to 12 if fontSize is null
        fontWeight: fontWeight ?? FontWeight.normal, // Default to FontWeight.normal if fontWeight is null
      ),
    );
  }
}
