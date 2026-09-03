part of '../pages/paywall_page.dart';

class _PaywallFooter extends StatelessWidget {
  const _PaywallFooter();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            await AppContainer.getIt<PreferencesService>().setHasOnboarded(true);
            if (context.mounted) {
              Navigator.pushNamedAndRemoveUntil(
                context,
                AppRoutes.home,
                (route) => false,
              );
            }
          },
          child: const Text("Try free for 3 days"),
        ),
        const SizedBox(height: 10),
        Text(
          "After the 3-day free trial period you'll be charged ₺274.99 per year unless you cancel before the trial expires. Yearly Subscription is Auto-Renewable",
          textAlign: TextAlign.center,
          style: context.appStyle.roboto9LightWhite52.copyWith(height: 1.33),
        ),
        const SizedBox(height: 8),
        Text(
          "Terms  •  Privacy  •  Restore",
          style: context.appStyle.roboto11RegularWhite52.copyWith(height: 1.45),
        ),
      ],
    );
  }
}
