import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hubx_case/core/constants/app_assets.dart';
import 'package:hubx_case/core/constants/app_routes.dart';
import 'package:hubx_case/core/di/app_container.dart';
import 'package:hubx_case/core/services/preferences_service.dart';
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

  void _onClose() async {
    await AppContainer.getIt<PreferencesService>().setHasOnboarded(true);
    if (!mounted) return;

    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    } else {
      Navigator.pushReplacementNamed(context, AppRoutes.home);
    }
  }

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
          Positioned(
            top: MediaQuery.of(context).padding.top + 8,
            right: 20,
            child: GestureDetector(
              onTap: _onClose,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: context.appColorScheme.black40,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.close, color: context.appColorScheme.white, size: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
