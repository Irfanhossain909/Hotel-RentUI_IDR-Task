// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'custom_text.dart';
//
// class CustomDrawer extends StatelessWidget {
//   final dynamic controller; // Controller প্যারামিটার ডিফাইন করুন
//
//   const CustomDrawer({super.key, required this.controller});
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: ListTileTheme(
//         textColor: Colors.white,
//         iconColor: Colors.white,
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             SizedBox(
//               width: 128.0,
//               height: 128.0,
//             ),
//             ..._buildMenuItems(),
//             Spacer(),
//             DefaultTextStyle(
//               style: TextStyle(
//                 fontSize: 12,
//                 color: Colors.white54,
//               ),
//               child: Container(
//                 margin: const EdgeInsets.symmetric(
//                   vertical: 16.0,
//                 ),
//                 child: Text('Terms of Service | Privacy Policy'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   List<Widget> _buildMenuItems() {
//     List<Widget> menuWidgets = [];
//     for (int i = 0; i < _menuItems.length; i++) {
//       menuWidgets.add(
//         Obx(() => ListTile(
//           onTap: () {
//             controller.updateSelectedIndex(i);
//           },
//           leading: Icon(
//             _menuItems[i]['icon'],
//             color: controller.selectedIndex.value == i
//                 ? Colors.blue
//                 : Colors.white,
//           ),
//           title: Row(
//             children: [
//               AnimatedContainer(
//                 duration: Duration(milliseconds: 300),
//                 width: controller.selectedIndex.value == i ? 30.0 : 0.0, // Adjust width when selected
//                 height: 2.0,
//                 color: Colors.blue,
//               ),
//               SizedBox(width: 8.0),
//               CustomText(
//                 text: _menuItems[i]['title'],
//                 fontWeight: FontWeight.w400,
//                 fontSize: 16,
//                 color: controller.selectedIndex.value == i
//                     ? Colors.blue
//                     : Colors.white,
//               ),
//             ],
//           ),
//           tileColor: controller.selectedIndex.value == i
//               ? Colors.white
//               : Colors.transparent,
//         )),
//       );
//       // প্রতি ৩টি আইটেম পর Divider যোগ করুন
//       if ((i + 1) % 3 == 0 && i != _menuItems.length - 1) {
//         menuWidgets.add(
//           Divider(
//             color: Colors.white.withOpacity(.4),
//           ),
//         );
//       }
//     }
//     return menuWidgets;
//   }
// }
//
// // মেনু আইটেম ডেটা
// final List<Map<String, dynamic>> _menuItems = [
//   {'title': 'Home', 'icon': Icons.home_outlined},
//   {'title': 'Profile', 'icon': Icons.person_2_outlined},
//   {'title': 'Nearby', 'icon': Icons.location_on_outlined},
//   {'title': 'Bookmark', 'icon': Icons.bookmark_border_outlined},
//   {'title': 'Notification', 'icon': Icons.notifications_outlined},
//   {'title': 'Message', 'icon': Icons.messenger_outline},
//   {'title': 'Setting', 'icon': Icons.settings_outlined},
//   {'title': 'Help', 'icon': Icons.help_outline},
//   {'title': 'Logout', 'icon': Icons.logout},
// ];
//
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_text.dart';

class CustomDrawer extends StatelessWidget {
  final dynamic controller; // Controller প্যারামিটার ডিফাইন করুন
  final Function(int) onTap; // onTap function

  const CustomDrawer({super.key, required this.controller, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTileTheme(
        textColor: Colors.white,
        iconColor: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: 128.0,
              height: 128.0,
            ),
            ..._buildMenuItems(),
            Spacer(),
            DefaultTextStyle(
              style: TextStyle(
                fontSize: 12,
                color: Colors.white54,
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                child: Text('Terms of Service | Privacy Policy'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildMenuItems() {
    List<Widget> menuWidgets = [];
    for (int i = 0; i < _menuItems.length; i++) {
      menuWidgets.add(
        Obx(() => ListTile(
          onTap: () {
            onTap(i); // Call the passed onTap function
            controller.updateSelectedIndex(i);
          },
          leading: Icon(
            _menuItems[i]['icon'],
            color: controller.selectedIndex.value == i
                ? Colors.blue
                : Colors.white,
          ),
          title: Row(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: controller.selectedIndex.value == i ? 50.0 : 0.0, // Adjust width when selected
                height: 2.0,
                decoration: BoxDecoration(
                  color: Colors.blue,

                ),

              ),
              SizedBox(width: 8.0),
              CustomText(
                text: _menuItems[i]['title'],
                fontWeight: FontWeight.w400,
                fontSize: controller.selectedIndex.value == i ? 18 : 14,
                color: controller.selectedIndex.value == i
                    ? Colors.blue
                    : Colors.white,
              ),
            ],
          ),
          tileColor: controller.selectedIndex.value == i
              ? Colors.white
              : Colors.transparent,
        )),
      );
      // প্রতি ৩টি আইটেম পর Divider যোগ করুন
      if ((i + 1) % 3 == 0 && i != _menuItems.length - 1) {
        menuWidgets.add(
          Divider(
            color: Colors.white.withOpacity(.4),
          ),
        );
      }
    }
    return menuWidgets;
  }
}

// মেনু আইটেম ডেটা
final List<Map<String, dynamic>> _menuItems = [
  {'title': 'Home', 'icon': Icons.home_outlined},
  {'title': 'Profile', 'icon': Icons.person_2_outlined},
  {'title': 'Nearby', 'icon': Icons.location_on_outlined},
  {'title': 'Bookmark', 'icon': Icons.bookmark_border_outlined},
  {'title': 'Notification', 'icon': Icons.notifications_outlined},
  {'title': 'Message', 'icon': Icons.messenger_outline},
  {'title': 'Setting', 'icon': Icons.settings_outlined},
  {'title': 'Help', 'icon': Icons.help_outline},
  {'title': 'Logout', 'icon': Icons.logout},
];
