import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/shimmers/shimmer.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.height = 56,
    this.width = 56,
    this.padding = TSizes.sm,
  });
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor, backgroundColor;
  final double height, width, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: height,
      height: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor ??
              ((THelperFunctions.isDarkMode(context))
                  ? TColors.black
                  : TColors.white),
          borderRadius: BorderRadius.circular(100.0)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
        child: isNetworkImage
            ? CachedNetworkImage(
                fit: fit,
                color: overlayColor,
                imageUrl: image,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    const TShimmerEffect(
                  radius: 60,
                  width: 60,
                  height: 60,
                ),
                errorWidget: (context, url, downloadProgress) =>
                    const Icon(Icons.error),
              )
            : Image(
                image: AssetImage(image),
                fit: fit,
                color: overlayColor,
              ),
      ),
    );
  }
}
