import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/signup/verify_email.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/terms_and_condtions.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/validators/validation.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                validator: (value) =>
                    TValidator.validateEmptyText("First Name", value),
                expands: false,
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
                  labelText: TTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextFormField(
                validator: (value) =>
                    TValidator.validateEmptyText("Last Name", value),
                expands: false,
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
                  labelText: TTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        //UserName
        TextFormField(
          expands: false,
          validator: (value) => TValidator.validateEmptyText("UserName", value),
          decoration: const InputDecoration(
            labelText: TTexts.username,
            prefixIcon: Icon(Iconsax.user_edit),
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        //Email
        TextFormField(
          validator: (value) => TValidator.validateEmail(value),
          decoration: const InputDecoration(
            labelText: TTexts.email,
            prefixIcon: Icon(Iconsax.direct),
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        //Phone Number
        TextFormField(
          validator: (value) => TValidator.validatePhoneNumber(value),
          decoration: const InputDecoration(
            labelText: TTexts.phoneNo,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        //Passwoord

        TextFormField(
          validator: (value) => TValidator.validatePassword(value),
          expands: false,
          decoration: InputDecoration(
              labelText: TTexts.password,
              prefixIcon: const Icon(Iconsax.user_edit),
              suffixIcon: IconButton(
                  onPressed: () {}, icon: const Icon(Iconsax.eye_slash))),
        ),

        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        //Terms andConitions checkbox
        const TTermsAndConditionsCheckBox(),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        //Signup button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: Text(
                TTexts.createAccount,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .apply(color: Colors.white),
              )),
        )
      ],
    ));
  }
}
