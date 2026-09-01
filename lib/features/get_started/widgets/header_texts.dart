part of '../pages/get_started_page.dart';

class _HeaderTexts extends StatelessWidget {
  const _HeaderTexts();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 22, left: 20, right: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RichText(
              text: TextSpan(
                text: "Welcome to ",
                style: context.appStyle.roboto28Regular,
                children: [
                  TextSpan(text: "PlantApp", style: context.appStyle.roboto28SemiBold),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Identify more than 3000+ plants and 88% accuracy.",
              style: context.appStyle.roboto16Regular.copyWith(
                color: context.appColorScheme.textColor.withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
