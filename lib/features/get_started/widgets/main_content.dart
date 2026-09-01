part of '../pages/get_started_page.dart';

class _MainContent extends StatelessWidget {
  const _MainContent();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 93.0),
                    child: Container(
                      height: 1,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.7),
                            blurRadius: 19,
                            spreadRadius: 1,
                            blurStyle: BlurStyle.normal,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    'assets/images/get_started_bg.png',
                    fit: BoxFit.fitWidth,
                    width: context.width,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 28.0, left: 20.0, right: 20.0),
            child: Column(
              spacing: 16,
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("Get Started")),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "By tapping next, you are agreeing to PlantID\n",
                    style: context.appStyle.roboto11RegularText2Color,
                    children: [
                      TextSpan(
                        text: "Terms of Use",
                        style: context.appStyle.roboto11RegularText2Color.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(text: " & ", style: context.appStyle.roboto11RegularText2Color),
                      TextSpan(
                        text: "Privacy Policy",
                        style: context.appStyle.roboto11RegularText2Color.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
