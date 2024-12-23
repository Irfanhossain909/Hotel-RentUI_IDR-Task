import 'package:get/get.dart';
import 'package:house_rent_app/data/models/category_model.dart';
import 'package:house_rent_app/data/models/gelary_image_model.dart';
import '../../data/models/item_model.dart';
// Assuming houseList is declared somewhere in your app
class HouseController extends GetxController {
   RxList<HouseRoom> allCategory = houseList.obs;
   RxList<CategoryList> catName = categoriesList.obs;
   RxList<Gallery_image> galleryImg = galleryPath.obs; // Initialize with a default value (e.g., -1)

   var selectedIndex = (-1).obs; // সিলেক্টেড আইটেমের ইনডেক্স

   void updateSelectedIndex(int index) {
      selectedIndex.value = index;
   }

}
