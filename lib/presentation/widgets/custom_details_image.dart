import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_text.dart';

class CustomDetailsImage extends StatelessWidget {
  final String imgPath;
  final String imgTitle;
  final String ingSubtitle;
  final String bedNumber;
  final String bathNumber;

  const CustomDetailsImage({
    super.key,
    required this.imgPath,
    required this.imgTitle,
    required this.ingSubtitle,
    required this.bedNumber,
    required this.bathNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 304,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(20), // Ensure radius is applied
              ),
              child: Image.asset(imgPath,
                  fit: BoxFit
                      .cover), // Use fit: BoxFit.cover to adjust the image
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.black38.withOpacity(.2),
              // Gray color for the background
              borderRadius: BorderRadius.circular(30), // Circular border radius
            ),
            child: IconButton(
              splashColor: Colors.black45,
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 20,
                color: Colors
                    .white, // You can set the icon color to white to stand out
              ),
            ),
          ),
        ),
        Positioned(
          right: 20,
          top: 20,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.black38.withOpacity(.2),
              // Gray color for the background
              borderRadius: BorderRadius.circular(30), // Circular border radius
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.bookmark_border_outlined,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                  text: imgTitle,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                CustomText(
                  text: ingSubtitle,
                  fontSize: 11,
                  color: Colors.white.withOpacity(.6),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/IC_Bedroom.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CustomText(
                      text: '$bedNumber Bedroom',
                      fontSize: 12,
                      color: Colors.white.withOpacity(.6),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Image.asset(
                      'assets/images/IC_Bathroom.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CustomText(
                      text: '$bathNumber Bathroom',
                      fontSize: 12,
                      color: Colors.white.withOpacity(.6),
                    ),
                  ],
                )
              ],
            )),
      ],
    );
  }
}
