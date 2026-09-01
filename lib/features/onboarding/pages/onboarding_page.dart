import 'package:flutter/material.dart';
import 'package:hubx_case/core/constants/app_assets.dart';
import 'package:hubx_case/extensions/build_context_extension.dart';

part '../widgets/onboarding_step_one.dart';
part '../widgets/onboarding_step_two.dart';
part '../widgets/page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  void _onContinue() {
    if (_currentIndex == 0) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // TODO: Navigate to Paywall when ready
      // Navigator.pushNamed(context, AppRoutes.paywall);
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              left: -224,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 448,
                  height: 448,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: context.appColorScheme.blobColor.withValues(
                          alpha: _currentIndex == 0 ? 0.45 : 0.25,
                        ),
                        blurRadius: 100,
                        spreadRadius: 1,
                        blurStyle: BlurStyle.normal,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned.fill(
              right: -836,
              top: -500,
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 952,
                  height: 952,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: context.appColorScheme.blobColor.withValues(
                          alpha: _currentIndex == 0 ? 0.45 : 0.25,
                        ),
                        blurRadius: 100,
                        spreadRadius: 1,
                        blurStyle: BlurStyle.normal,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    children: const [_OnboardingStepOne(), _OnboardingStepTwo()],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 28.0, left: 20.0, right: 20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        onPressed: _onContinue,
                        child: const Text("Continue"),
                      ),
                      const SizedBox(height: 16),
                      _PageIndicator(currentIndex: _currentIndex),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
