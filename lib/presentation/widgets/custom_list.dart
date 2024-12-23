import 'package:flutter/material.dart';

import '../../core/constants/colors/app_color.dart';
import 'custom_text.dart';

class CustomList extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String bedNo;
  final String bathNo;
  final void Function() onTap;

  const CustomList({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.bedNo,
    required this.bathNo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        // height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 74,
              height: 70,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  fit: BoxFit.cover,
                  image,
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: title,
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                CustomText(
                  text: price,
                  color: AppColors.secondaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/bed.png',
                      width: 16,
                      height: 12.5,
                    ),
                    CustomText(
                      text: '  $bedNo Bedroom',
                      color: AppColors.textColor,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'assets/images/sho.png',
                      width: 16,
                      height: 12.5,
                    ),
                    CustomText(
                      text: '  $bathNo Bathroom',
                      color: AppColors.textColor,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
