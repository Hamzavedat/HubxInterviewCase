import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubx_case/features/home/bloc/home_cubit.dart';
import 'package:hubx_case/core/constants/app_assets.dart';
import 'package:hubx_case/core/constants/app_routes.dart';
import 'package:hubx_case/extensions/build_context_extension.dart';
import 'package:hubx_case/core/widgets/coming_soon_widget.dart';
import 'package:hubx_case/features/home/pages/home_page.dart';
import 'package:hubx_case/features/dashboard/widgets/plant_app_bottom_bar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    BlocProvider(create: (context) => HomeCubit(), child: const HomePage()),
    const ComingSoonWidget(
      title: "Diagnose",
      icon: Icons.health_and_safety_rounded,
      animationType: ComingSoonAnimationType.pulse,
      description: "Diagnose feature is coming soon! You will be able to identify plant diseases instantly.",
    ),
    const SizedBox(), // Placeholder for center FAB
    const ComingSoonWidget(
      title: "My Garden",
      icon: Icons.yard_rounded,
      animationType: ComingSoonAnimationType.floating,
      description: "My Garden section is being prepared. Keep all your plants organized in one place!",
    ),
    const ComingSoonWidget(
      title: "Profile",
      icon: Icons.manage_accounts_rounded,
      animationType: ComingSoonAnimationType.swinging,
      description: "Profile and settings are currently under construction. Stay tuned!",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(index: _currentIndex, children: _pages),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.scanner);
        },
        child: Container(
          width: 66,
          height: 66,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [context.appColorScheme.primaryColor, context.appColorScheme.fabGradientEnd],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            boxShadow: [
              BoxShadow(
                color: context.appColorScheme.primaryColor.withValues(alpha: 0.3),
                blurRadius: 15,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Center(
            child: Image.asset(
              AppAssets.iconScanner,
              width: 28,
              height: 28,
              color: context.appColorScheme.white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: PlantAppBottomBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index != 2) {
            setState(() {
              _currentIndex = index;
            });
          }
        },
        onScannerTap: () {
          Navigator.pushNamed(context, AppRoutes.scanner);
        },
      ),
    );
  }
}
