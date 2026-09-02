part of '../pages/paywall_page.dart';

class _FeatureBox extends StatelessWidget {
  final String iconAsset;
  final String title;
  final String subtitle;

  const _FeatureBox({
    required this.iconAsset,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
        child: Container(
          constraints: const BoxConstraints(minWidth: 156),
          padding: const EdgeInsets.only(top: 16, left: 16, bottom: 16, right: 30),
          decoration: BoxDecoration(
            color: context.appColorScheme.white08,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: context.appColorScheme.black24,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Image.asset(
                    iconAsset,
                    width: 18,
                    height: 18,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(title, style: context.appStyle.roboto20MediumWhite.copyWith(height: 1.2)),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: context.appStyle.roboto13RegularWhite.copyWith(
                  color: context.appColorScheme.white70,
                  height: 1.38,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
