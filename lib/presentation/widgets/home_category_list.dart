import 'package:flutter/material.dart';
import 'package:house_rent_app/presentation/controllers/house_controller.dart';

import '../../core/constants/colors/primary_bg.dart';
import '../../core/constants/fonts/text_font.dart';

class HomeCategoryList extends StatelessWidget {
  final HouseController controller;
  final void Function()? onTap;
  const HomeCategoryList({super.key, required this.controller, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          primary: false,
          shrinkWrap: true,
          itemCount: controller.catName.length,
          itemBuilder: (context, index) {
            final item = controller.catName[index];
            return InkWell(
              onTap: onTap,
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient:
                    index == 0
                        ? PrimaryBg.primaryColor
                        : null,

// PrimaryBg.primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      item.name,
                      style: AppTextStyles.ralewayStyle.copyWith(
                          color: index == 0
                              ? Colors.white
                              : Colors.black,
                          fontSize: 12),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
