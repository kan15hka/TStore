import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/image_text_widdgets/vertical_image_text.dart';
import 'package:t_store/features/shop/screens/sub_category/sub_categories.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> categoriesList = [
      {"image": TImages.sportIcon, "title": "Sports"},
      {"image": TImages.clothIcon, "title": "Clothes"},
      {"image": TImages.electronicsIcon, "title": "Electronics"},
      {"image": TImages.shoeIcon, "title": "Shoes"},
      {"image": TImages.cosmeticsIcon, "title": "Cosmetic"},
      {"image": TImages.animalIcon, "title": "Pets"},
      {"image": TImages.toyIcon, "title": "Toys"},
      {"image": TImages.furnitureIcon, "title": "Furnitures"},
      {"image": TImages.jeweleryIcon, "title": "Jwellery"},
    ];
    return SizedBox(
      height: 80.0,
      child: ListView.builder(
          itemCount: categoriesList.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: TSizes.defaultSpace),
          itemBuilder: (_, index) {
            return TVerticalImageText(
              image: categoriesList[index]["image"]!,
              title: categoriesList[index]["title"]!,
              onTap: () => Get.to(() => const SubategoriesScreen()),
            );
          }),
    );
  }
}
