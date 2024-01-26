import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/pricing_text.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TRowPricingText(
          title: "SubTotal",
          value: "\$256.0",
          valuTextStyle: Theme.of(context).textTheme.bodyMedium,
        ),
        const TRowPricingText(
          title: "Shipping Fee",
          value: "\$6.0",
        ),
        const TRowPricingText(
          title: "Tax Fee",
          value: "\$6.0",
        ),
        TRowPricingText(
          title: "Order Total",
          value: "\$6.0",
          valuTextStyle: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
