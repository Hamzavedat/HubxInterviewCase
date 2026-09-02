part of '../pages/paywall_page.dart';

class _SubscriptionOption extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  final String title;
  final TextSpan subtitleSpan;
  final String? badgeText;

  const _SubscriptionOption({
    required this.isSelected,
    required this.onTap,
    required this.title,
    required this.subtitleSpan,
    this.badgeText,
  });

  @override
  Widget build(BuildContext context) {
    final primaryColor = context.appColorScheme.primaryColor;

    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
              child: AnimatedContainer(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: isSelected ? primaryColor : context.appColorScheme.white30,
                    width: isSelected ? 1.5 : 0.5,
                  ),
                  gradient: isSelected
                      ? LinearGradient(
                          colors: [
                            context.appColorScheme.primary24,
                            context.appColorScheme.transparent,
                          ],
                        )
                      : null,
                  color: isSelected ? null : context.appColorScheme.white05,
                ),
                padding: const EdgeInsets.all(14),
                duration: Duration(milliseconds: 300),
                child: Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isSelected ? primaryColor : context.appColorScheme.white08,
                      ),
                      child: isSelected
                          ? Center(
                              child: Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: context.appColorScheme.white,
                                ),
                              ),
                            )
                          : null,
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: context.appStyle.roboto16MediumWhite.copyWith(
                            height: 1.25,
                          ),
                        ),
                        const SizedBox(height: 2),
                        RichText(text: subtitleSpan),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (badgeText != null)
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(14),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Text(
                  badgeText!,
                  style: context.appStyle.roboto12MediumWhite.copyWith(height: 1.16),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
