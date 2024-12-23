import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:house_rent_app/core/constants/colors/app_color.dart';

class PrimaryBg {
  static Gradient primaryColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [
      AppColors.firstGradient,
      AppColors.secondGradient,
    ],
  );
}
