import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:house_rent_app/core/constants/colors/app_color.dart';
import 'package:house_rent_app/core/constants/fonts/text_font.dart';
import 'package:house_rent_app/core/constants/colors/primary_bg.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Icon(
            Icons.search_rounded,
            color: Colors.grey,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            'Search address, or near you ',
            style: AppTextStyles.ralewayStyle.copyWith(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
