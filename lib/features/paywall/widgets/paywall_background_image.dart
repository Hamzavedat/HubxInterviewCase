part of '../pages/paywall_page.dart';

class _PaywallBackgroundImage extends StatelessWidget {
  const _PaywallBackgroundImage();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppAssets.paywallPlant, width: double.infinity, fit: BoxFit.fitWidth),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: 100,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  context.appColorScheme.paywallBgColor.withValues(alpha: 0.0),
                  context.appColorScheme.paywallBgColor,
                ],
              ),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 8, right: 20),
            child: Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
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
          ),
        ),
      ],
    );
  }
}
