part of '../pages/onboarding_page.dart';

class _OnboardingStepTwo extends StatelessWidget {
  const _OnboardingStepTwo();

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
                text: "Get plant ",
                style: context.appStyle.roboto28Medium,
                children: [
                  WidgetSpan(
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.bottomCenter,
                      children: [
                        Positioned(
                          bottom: -24,
                          left: 0,
                          right: 0,
                          child: Image.asset(AppAssets.underline, fit: BoxFit.fitWidth),
                        ),
                        Text("care guides   ", style: context.appStyle.roboto28ExtraBold),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                AppAssets.phoneDetail,
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
