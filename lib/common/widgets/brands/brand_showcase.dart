import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/brands/brand_card.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      padding: const EdgeInsets.all(TSizes.sm),
      child: Column(children: [
        //Brand with Products Count
        const TBrandCard(
          showBorder: false,
          imageSize: 50.0,
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        //Brandd top 3 Product Images
        Row(
          children: images
              .map((image) => brandTopProductsImageWidget(image, context))
              .toList(),
        )
      ]),
    );
  }
}

Widget brandTopProductsImageWidget(String image, context) {
  return Expanded(
      child: TRoundedContainer(
    height: 90.0,
    margin: const EdgeInsets.all(TSizes.sm / 2),
    backgroundColor: THelperFunctions.isDarkMode(context)
        ? TColors.darkerGrey
        : TColors.light,
    padding: const EdgeInsets.all(TSizes.sm),
    child: Image(
      image: AssetImage(image),
      fit: BoxFit.contain,
    ),
  ));
}
