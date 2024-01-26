import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/brands/brand_card.dart';
import 'package:t_store/common/widgets/products/sortable/sortable_products.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';

class TBrandProducts extends StatelessWidget {
  const TBrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          "Nike",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: TSizes.defaultSpace, vertical: TSizes.spaceBtwItems),
        child: Column(
          children: [
            const TSectionHeading(
              title: "All Products",
              showActionButton: false,
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),
            Row(
              children: [
                SizedBox(
                  width: TDeviceUtils.getScreenWidth(context) * 0.5,
                  child: const TBrandCard(showBorder: true),
                ),
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),
            const TSortableProducts()
          ],
        ),
      )),
    );
  }
}
