import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/shadows.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/icons/circular_icon.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/common/widgets/texts/brand_title_text_with_verifiacion_icon.dart';
import 'package:t_store/common/widgets/texts/product_price_text.dart';
import 'package:t_store/common/widgets/texts/product_title_text.dart';
import 'package:t_store/features/shop/screens/product_details/product_details.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final productist = [
      TImages.productImage1,
      TImages.productImage2,
      TImages.productImage3,
      TImages.productImage4,
      TImages.productImage5,
      TImages.productImage6
    ];
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180.0,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [TShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? TColors.darkerGrey : TColors.white),
        child: Column(children: [
          //Thumbnail ,Wishlist discount tag
          TRoundedContainer(
            height: 160.0,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                //ThumbnailImage
                TRoundedImage(
                  width: double.infinity,
                  imageUrl: productist[index],
                  applyImageRadius: true,
                ),
                //Sale Tag
                Positioned(
                    top: 12.0,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm,
                        vertical: TSizes.xs,
                      ),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    )),
                //Favorite Icon
                const Positioned(
                  top: 0.0,
                  right: 0.0,
                  child: TCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems / 2,
          )
          //Details
          ,
          const Padding(
            padding: EdgeInsets.only(left: TSizes.sm),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TProductTitleText(
                title: "Green Nike Air Shoes",
                smallSize: true,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              TBrandTitleTextWithVerificationIcon(
                title: "Nike",
              ),
            ]),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Price
              const Padding(
                padding: EdgeInsets.only(left: TSizes.md),
                child: TProductPriceText(
                  price: '35.5',
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: dark ? TColors.primary : TColors.dark,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    )),
                child: const SizedBox(
                  height: TSizes.iconLg * 1.2,
                  width: TSizes.iconLg * 1.2,
                  child: Center(
                    child: Icon(
                      Iconsax.add,
                      color: TColors.white,
                    ),
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
