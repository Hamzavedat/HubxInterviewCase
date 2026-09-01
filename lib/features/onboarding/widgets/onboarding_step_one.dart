part of '../pages/onboarding_page.dart';

class _OnboardingStepOne extends StatelessWidget {
  const _OnboardingStepOne();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 22, left: 20, right: 20),
            child: RichText(
              text: TextSpan(
                text: "Take a photo to ",
                style: context.appStyle.roboto28Regular,
                children: [
                  WidgetSpan(
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.bottomCenter,
                      children: [
                        Positioned(
                          bottom: -14,
                          left: 0,
                          right: 0,
                          child: Image.asset(AppAssets.underline, fit: BoxFit.fitWidth),
                        ),
                        Text("identify   ", style: context.appStyle.roboto28Bold),
                      ],
                    ),
                  ),
                  const TextSpan(text: "\nthe plant!"),
                ],
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                AppAssets.phoneScan,
                fit: BoxFit.fitWidth,
                width: double.infinity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
