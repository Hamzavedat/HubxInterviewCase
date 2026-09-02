import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hubx_case/core/constants/app_assets.dart';
import 'package:hubx_case/extensions/build_context_extension.dart';
import 'package:hubx_case/features/paywall/enums/subscription_type.dart';

part '../widgets/paywall_background_image.dart';
part '../widgets/paywall_header.dart';
part '../widgets/paywall_features_list.dart';
part '../widgets/paywall_feature_box.dart';
part '../widgets/paywall_subscription_options.dart';
part '../widgets/paywall_subscription_option.dart';
part '../widgets/paywall_footer.dart';

class PaywallPage extends StatefulWidget {
  const PaywallPage({super.key});

  @override
  State<PaywallPage> createState() => _PaywallPageState();
}

class _PaywallPageState extends State<PaywallPage> {
  SubscriptionType _selectedSubscription = SubscriptionType.yearly;

  void _onSubscriptionSelect(SubscriptionType type) {
    setState(() {
      _selectedSubscription = type;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColorScheme.paywallBgColor,
      body: Stack(
        children: [
          const _PaywallBackgroundImage(),
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: context.height * (276 / 800),
                      bottom: 32,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: _PaywallHeader(),
                        ),
                        const SizedBox(height: 24),
                        const _PaywallFeaturesList(),
                        const SizedBox(height: 24),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: _PaywallSubscriptionOptions(
                            selectedType: _selectedSubscription,
                            onSelect: _onSubscriptionSelect,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.all(20),
                child: SafeArea(top: false, child: _PaywallFooter()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
