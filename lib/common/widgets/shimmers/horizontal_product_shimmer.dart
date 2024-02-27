import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/shimmers/shimmer.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TVerticalProductShimmer extends StatelessWidget {
  const TVerticalProductShimmer({super.key, this.itemCount = 4});
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwSections),
      height: 120.0,
      child: ListView.separated(
        itemCount: itemCount,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        itemBuilder: (_, __) => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TShimmerEffect(
              width: 120.0,
              height: 120.0,
            ),
            SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Image

                  SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),

                  //Text
                  TShimmerEffect(
                    width: 160.0,
                    height: 15.0,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  TShimmerEffect(
                    width: 110.0,
                    height: 15.0,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  TShimmerEffect(
                    width: 80.0,
                    height: 15.0,
                  ),
                  Spacer()
                ]),
          ],
        ),
      ),
    );
  }
}
