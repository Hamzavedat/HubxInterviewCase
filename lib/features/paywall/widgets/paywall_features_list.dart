part of '../pages/paywall_page.dart';

class _PaywallFeaturesList extends StatelessWidget {
  const _PaywallFeaturesList();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        spacing: 8,
        children: const [
          _FeatureBox(
            iconAsset: AppAssets.iconScanner,
            title: "Unlimited",
            subtitle: "Plant Identify",
          ),
          _FeatureBox(
            iconAsset: AppAssets.iconSpeedometer,
            title: "Faster",
            subtitle: "Process",
          ),
          _FeatureBox(
            iconAsset: AppAssets.iconDetail,
            title: "Detailed",
            subtitle: "Plant care",
          ),
        ],
      ),
    );
  }
}
