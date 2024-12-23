import 'package:flutter/material.dart';

import '../../core/constants/fonts/text_font.dart';

class CustomSlide extends StatelessWidget {
  final String imgPath;
  final String name;
  final String? ownName;
  final String? location;
  final void Function()? onTap;

  const CustomSlide(
      {super.key,
      required this.imgPath,
      required this.name,
      this.ownName,
      this.location,
        this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      width: 222,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imgPath,
                fit: BoxFit.cover,
                width: double.infinity,
                // Ensures image covers full width
                height: double.infinity, // Ensures image covers full height
              ),
            ),
            Positioned(
              top: 17,
              right: 10,
              // left: 10,
              child: Container(
                width: 73,
                height: 24,
                decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // Horizontally center items
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // Vertically center items
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 12,
                      color: Colors.white.withOpacity(.6),
                    ),
                    Text(
                      location!,
                      style: AppTextStyles.ralewayStyle.copyWith(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppTextStyles.ralewayStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    ownName!,
                    style: AppTextStyles.ralewayStyle.copyWith(
                        color: Colors.white.withOpacity(.6),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
