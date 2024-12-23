import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:house_rent_app/core/constants/colors/app_color.dart';
import 'package:house_rent_app/presentation/controllers/house_controller.dart';
import 'package:house_rent_app/presentation/screens/detail.dart';
import 'package:house_rent_app/presentation/widgets/custom_filter_button.dart';
import 'package:house_rent_app/presentation/widgets/custom_list.dart';
import 'package:house_rent_app/presentation/widgets/custom_slide.dart';
import 'package:house_rent_app/presentation/widgets/custom_text.dart';
import 'package:house_rent_app/presentation/widgets/home_category_list.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/custom_search_bar.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Initialize the controller using GetX for state management
    final controller = Get.put(HouseController());
    int button = 0; // Variable for potential usage in filtering or actions

    return AdvancedDrawer(
      backdropColor: AppColors.secondaryColor, // Drawer background color
      drawer: CustomDrawer(
        controller: controller,
        onTap: (index) {
          // Print the tapped item index
          print("Item tapped: $index");
        },
      ),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor, // Scaffold background color
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75), // Custom app bar height
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10), // App bar padding
              child: Column(
                children: [
                  ListTile(
                    title: CustomText(
                      text: 'Location', // Static location label
                      fontSize: 12,
                      color: AppColors.textColor,
                    ),
                    subtitle: Row(
                      children: [
                        CustomText(
                          text: 'Jakarta', // Current location
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down, // Dropdown icon
                          color: AppColors.textColor,
                        )
                      ],
                    ),
                    trailing: IconButton(
                      onPressed: () {}, // Placeholder for notification action
                      icon: Image.asset('assets/images/notify.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16), // Body padding
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: CustomSearchBar()), // Search bar widget
                    SizedBox(width: 8), // Spacer
                    CustomFilterButton(), // Filter button widget
                  ],
                ),
                SizedBox(height: 14), // Space between sections
                HomeCategoryList(controller: controller), // Category list widget
                SizedBox(height: 14), // Space between sections
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Near from you', // Nearby section label
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomText(
                      text: 'See More', // See more link
                      fontSize: 12,
                      color: AppColors.textColor.withOpacity(.6),
                    ),
                  ],
                ),
                SizedBox(height: 14), // Space between sections
                SizedBox(
                  height: 272,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal, // Horizontal list
                    primary: false,
                    itemCount: controller.allCategory.length, // Total items
                    itemBuilder: (context, index) {
                      final imgItems = controller.allCategory[index];
                      return CustomSlide(
                        onTap: () => Get.to(() => Detail(id: imgItems.id!)), // Navigate to detail page
                        imgPath: imgItems.image,
                        name: imgItems.name,
                        ownName: imgItems.oWnName,
                        location: imgItems.locationDuration,
                      );
                    },
                  ),
                ),
                SizedBox(height: 14), // Space between sections
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Best for you', // Best for you section label
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomText(
                      text: 'See More', // See more link
                      fontSize: 12,
                      color: AppColors.textColor.withOpacity(.6),
                    ),
                  ],
                ),
                SizedBox(height: 14), // Space between sections
                ListView.builder(
                  primary: false,
                  shrinkWrap: true, // Allow nested scrolling
                  itemCount: controller.allCategory.length, // Total items
                  itemBuilder: (context, index) {
                    final items = controller.allCategory[index];
                    return CustomList(
                      onTap: () => Get.to(() => Detail(id: items.id!)), // Navigate to detail page
                      image: items.image,
                      title: items.name,
                      price: items.price!,
                      bedNo: items.bedNum!,
                      bathNo: items.bathNum!,
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
