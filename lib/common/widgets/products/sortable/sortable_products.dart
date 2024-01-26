import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_cards/product_cards_vertical.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Dropdown
        DropdownButtonFormField(
          padding: EdgeInsets.zero,
          decoration: const InputDecoration(
              prefix: Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(
                  Iconsax.sort,
                ),
              ),
              contentPadding: EdgeInsets.all(15.0)),
          onChanged: (value) {},
          items: [
            "Name",
            "Higher Price",
            "Lower Price",
            "Sale",
            "Nearest",
            "Popularity"
          ]
              .map((option) =>
                  DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        TGridLayout(
            itemCount: 6,
            itemBuilder: (_, index) => TProductCardVertical(index: index))
      ],
    );
  }
}