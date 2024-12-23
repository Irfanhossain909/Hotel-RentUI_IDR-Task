import 'package:flutter/material.dart';
import 'package:house_rent_app/core/constants/colors/app_color.dart';
import 'package:house_rent_app/presentation/widgets/custom_details_image.dart';
import 'package:house_rent_app/presentation/widgets/custom_text.dart';
import 'package:readmore/readmore.dart';

import '../../data/models/item_model.dart';

class Detail extends StatelessWidget {
  final int id;

  const Detail({super.key, required this.id}); // Constructor with required ID parameter

  @override
  Widget build(BuildContext context) {
    // Fetch the house item using the provided ID
    final house = houseList.firstWhere((item) => item.id == id);

    return Scaffold(
      backgroundColor: AppColors.primaryColor, // Set scaffold background color
      bottomNavigationBar: BottomAppBar(
        // Bottom bar with price and "Rent Now" button
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Price', // Label for price
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
                CustomText(
                  text: house.price!, // Price value
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  AppColors.secondaryColor.withOpacity(.6),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded button
                  ),
                ),
              ),
              onPressed: () {
                // TODO: Add rent functionality
              },
              child: CustomText(
                text: 'Rent Now', // Button text
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // House details image with information
                CustomDetailsImage(
                  imgPath: house.image,
                  imgTitle: house.name,
                  ingSubtitle: house.oWnName!,
                  bedNumber: house.bedNum!,
                  bathNumber: house.bathNum!,
                ),
                SizedBox(height: 20),
                // Description section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Description', // Section title
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 10),
                    ReadMoreText(
                      house.description!, // House description
                      trimLines: 3, // Initial lines to show
                      textAlign: TextAlign.justify,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show More',
                      trimExpandedText: 'Show Less',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor.withOpacity(.8),
                        fontSize: 12,
                      ),
                      moreStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.secondaryColor,
                      ),
                      lessStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Owner details section
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset('assets/images/ownerImg.png'),
                  title: CustomText(
                    text: 'Garry Allen', // Owner name
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  subtitle: CustomText(
                    text: 'Owner', // Owner role
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Call button
                      Container(
                        width: 26,
                        height: 26,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor.withOpacity(.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: IconButton(
                          splashColor: Colors.black45,
                          onPressed: () {
                            // TODO: Add call functionality
                          },
                          icon: Icon(
                            Icons.call,
                            size: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      // Message button
                      Container(
                        width: 26,
                        height: 26,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor.withOpacity(.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: IconButton(
                          splashColor: Colors.black45,
                          onPressed: () {
                            // TODO: Add message functionality
                          },
                          icon: Icon(
                            Icons.messenger,
                            size: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Gallery section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Gallery', // Section title
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 72,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: house.imgList!.length, // Total images
                        itemBuilder: (context, index) {
                          final items = house.imgList![index];
                          return Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                width: 72,
                                child: Image.asset(
                                  items,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Map section
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 300,
                    child: Image.network(
                      'https://media.wired.com/photos/5a6a61938c669c70314b300d/master/w_1920,c_limit/Google-Map-US_10.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
