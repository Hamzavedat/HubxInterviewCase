part of '../pages/onboarding_page.dart';

class _PageIndicator extends StatelessWidget {
  final int currentIndex;

  const _PageIndicator({required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        bool isActive = index == currentIndex;
        return SizedBox(
          height: 10,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.symmetric(horizontal: 4),
            width: isActive ? 10 : 6,
            height: isActive ? 10 : 6,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.appColorScheme.textColor.withValues(
                alpha: isActive ? 1.0 : 0.25,
              ),
            ),
          ),
        );
      }),
    );
  }
}
