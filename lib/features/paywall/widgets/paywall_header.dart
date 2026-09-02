part of '../pages/paywall_page.dart';

class _PaywallHeader extends StatelessWidget {
  const _PaywallHeader();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Image.asset(AppAssets.logo, height: 27, fit: BoxFit.fill),
            const SizedBox(width: 6),
            Text(
              "Premium",
              style: context.appStyle.roboto27LightWhite.copyWith(height: 1.18),
            ),
          ],
        ),
        const SizedBox(height: 3),
        Text(
          "Access All Features",
          style: context.appStyle.roboto17LightWhite.copyWith(
            color: context.appColorScheme.white70,
            height: 1.41,
          ),
        ),
      ],
    );
  }
}
