part of '../pages/paywall_page.dart';

class _PaywallSubscriptionOptions extends StatelessWidget {
  final SubscriptionType selectedType;
  final ValueChanged<SubscriptionType> onSelect;

  const _PaywallSubscriptionOptions({required this.selectedType, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        _SubscriptionOption(
          isSelected: selectedType == SubscriptionType.monthly,
          onTap: () => onSelect(SubscriptionType.monthly),
          title: "1 Month",
          subtitleSpan: TextSpan(
            text: "\$2.99/month",
            style: context.appStyle.roboto12LightWhite.copyWith(
              color: context.appColorScheme.white70,
              height: 1.5,
            ),
            children: [
              TextSpan(
                text: ", auto renewable",
                style: context.appStyle.roboto12RegularWhite.copyWith(
                  color: context.appColorScheme.white70,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
        _SubscriptionOption(
          isSelected: selectedType == SubscriptionType.yearly,
          onTap: () => onSelect(SubscriptionType.yearly),
          title: "1 Year",
          badgeText: "Save 50%",
          subtitleSpan: TextSpan(
            text: "First 3 days free, then \$52.99/year",
            style: context.appStyle.roboto12RegularWhite.copyWith(
              color: context.appColorScheme.white70,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
