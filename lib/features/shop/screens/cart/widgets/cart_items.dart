import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/products/cart/add_remove_button.dart';
import 'package:t_store/common/widgets/products/cart/cart_item.dart';
import 'package:t_store/common/widgets/texts/product_price_text.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButton = true,
  });
  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(top: 15.0),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      itemCount: 2,
      itemBuilder: (_, index) {
        return Column(
          children: [
            //Cart Item
            const TCartItem(),
            // Whether to show the add remove button ornot
            if (showAddRemoveButton) ...[
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              //Add Remove Buton
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 70.0,
                      ),
                      TProductQuantityWithAddRemoveButton()
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: TProductPriceText(price: "256"))
                ],
              ),
            ]
          ],
        );
      },
    );
  }
}
