import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:t_store/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/data/repositories/authentication/authentication_repository.dart';
import 'package:t_store/features/personalization/screens/address/address.dart';
import 'package:t_store/features/personalization/screens/profile/profile.dart';
import 'package:t_store/features/shop/controllers/settings_controller.dart';
import 'package:t_store/features/shop/screens/cart/cart.dart';
import 'package:t_store/features/shop/screens/load_data/load_data.dart';
import 'package:t_store/features/shop/screens/order/order.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SettingsController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          //Header
          TPrimaryHeaderContainer(
            child: Column(
              children: [
                //AppBar
                TAppBar(
                  title: Text(
                    "Account",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  ),
                ),
                //User Profile Card
                TUserProfileTile(
                  onPressed: () => Get.to(() => const ProfileScreen()),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems * 1.5,
                )
              ],
            ),
          ),
          //Body
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                //Account Settings
                const TSectionHeading(
                  title: "Account Settings",
                  showActionButton: false,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                TSettingMenuTile(
                  onTap: () => Get.to(() => const UserAddressScreen()),
                  icon: Iconsax.safe_home,
                  title: "My Address",
                  subtitle: "Set Shipping delivery address",
                ),
                TSettingMenuTile(
                  onTap: () => Get.to(() => const CartScreen()),
                  icon: Iconsax.shopping_cart,
                  title: "My Cart",
                  subtitle: "Add, remove Products and move to checkout",
                ),
                TSettingMenuTile(
                  onTap: () => Get.to(() => const OrderScreen()),
                  icon: Iconsax.bag_tick,
                  title: "My Orders",
                  subtitle: "In-Progress and Completed orders",
                ),
                const TSettingMenuTile(
                  icon: Iconsax.bank,
                  title: "My Account",
                  subtitle: "Withdraw balance to registered bank account",
                ),
                const TSettingMenuTile(
                  icon: Iconsax.discount_shape,
                  title: "My Coupons",
                  subtitle: "List of all discounted coupons",
                ),
                const TSettingMenuTile(
                  icon: Iconsax.notification,
                  title: "Notifications",
                  subtitle: "Set any kind of Notification Message",
                ),
                const TSettingMenuTile(
                  icon: Iconsax.security_card,
                  title: "Account Privacy",
                  subtitle: "Manage Data usage and connected accounts",
                ),

                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                const TSectionHeading(
                  title: "App Settings",
                  showActionButton: false,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                TSettingMenuTile(
                  onTap: () => Get.to(() => const LoadDataScreen()),
                  icon: Iconsax.document_upload,
                  title: "Load Data",
                  subtitle: "Upload data to your Cloud Firebase",
                ),
                TSettingMenuTile(
                  icon: Iconsax.location,
                  title: "Geolocation",
                  subtitle: "Set Recomendation based on location",
                  trailing: Obx(
                    () => Switch(
                      value: controller.geoLocationSwitch.value,
                      onChanged: (value) =>
                          controller.geoLocationSwitch.value = value,
                    ),
                  ),
                ),
                TSettingMenuTile(
                  icon: Iconsax.security_user,
                  title: "Safe Mode",
                  subtitle: "Search result is safe for all ages",
                  trailing: Obx(
                    () => Switch(
                      value: controller.safeModeSwitch.value,
                      onChanged: (value) =>
                          controller.safeModeSwitch.value = value,
                    ),
                  ),
                ),
                TSettingMenuTile(
                  icon: Iconsax.image,
                  title: "HD Image Quality",
                  subtitle: "Set Image quality tobe seen",
                  trailing: Obx(
                    () => Switch(
                      value: controller.hdImgQualitySwitch.value,
                      onChanged: (value) =>
                          controller.hdImgQualitySwitch.value = value,
                    ),
                  ),
                ),

                //Logout Button
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () =>
                          AuthenticationRepository.instance.logout(),
                      child: Text("Logout",
                          style: Theme.of(context).textTheme.titleMedium)),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections * 2,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
