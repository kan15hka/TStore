import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/images/circular_image.dart';
import 'package:t_store/common/widgets/texts/brand_title_text_with_verifiacion_icon.dart';
import 'package:t_store/common/widgets/texts/product_price_text.dart';
import 'package:t_store/common/widgets/texts/product_title_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Price and Sales Price
        Row(
          children: [
            //Sale Tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                "25%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            //Price
            Text(
              "\$250",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            const TProductPriceText(
              price: "175",
              isLarge: true,
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        //Tile
        const TProductTitleText(title: "Green Nike Sports Shirt"),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),
        //Stock status
        Row(
          children: [
            const TProductTitleText(title: "Status"),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text("In Stock", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        //Brand
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),
        Row(
          children: [
            TCircularImage(
              image: TImages.clothIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
            const TBrandTitleTextWithVerificationIcon(
              title: "Nike",
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
