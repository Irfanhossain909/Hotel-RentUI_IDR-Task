import 'package:flutter/material.dart';
import 'package:house_rent_app/core/constants/colors/primary_bg.dart';

class CustomFilterButton extends StatelessWidget {
  final void Function()? onTap;
  const CustomFilterButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 60, // Set container's width
        height: 60, // Set container's height
        decoration: BoxDecoration(
          gradient: PrimaryBg.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center( // Center the image inside the container
          child: Image.asset(
            'assets/images/filter.png', // Set image height
          ),
        ),
      ),
    );
  }
}
