part of '../pages/home_page.dart';

class _HomePremiumBox extends StatelessWidget {
  final VoidCallback? onTap;

  const _HomePremiumBox({this.onTap});

  @override
  Widget build(BuildContext context) {
    final colors = context.appColorScheme;
    final styles = context.appStyle;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 64,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: colors.premiumBoxBgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 48,
              height: 48,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(AppAssets.iconMail, width: 44, height: 44),
                  Positioned(
                    right: 0,
                    top: 2,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: colors.badgeColor,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        "1",
                        style: styles.roboto11Regular.copyWith(
                          color: colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: [colors.premiumGold1Start, colors.premiumGold1End],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ).createShader(bounds),
                    child: Text(
                      "FREE Premium Available",
                      style: styles.roboto15Regular.copyWith(
                        color: colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: [colors.premiumGold2Start, colors.premiumGold2End],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ).createShader(bounds),
                    child: Text(
                      "Tap to upgrade your account!",
                      style: styles.roboto12Regular.copyWith(color: colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.chevron_right_rounded, color: colors.premiumArrowColor, size: 24),
          ],
        ),
      ),
    );
  }
}
