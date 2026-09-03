import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hubx_case/core/constants/app_assets.dart';
import 'package:hubx_case/extensions/build_context_extension.dart';

class PlantAppBottomBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int>? onTap;
  final VoidCallback? onScannerTap;

  const PlantAppBottomBar({
    super.key,
    this.currentIndex = 0,
    this.onTap,
    this.onScannerTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.appColorScheme.white.withValues(alpha: 0.92),
        border: Border(
          top: BorderSide(
            color: context.appColorScheme.textColor.withValues(alpha: 0.10),
            width: 0.2,
          ),
        ),
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 22.5, sigmaY: 22.5),
          child: SafeArea(
            child: SizedBox(
              height: 60,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildNavItem(0, AppAssets.iconHome, "Home", context),
                      _buildNavItem(1, AppAssets.iconDiagnose, "Diagnose", context),
                      const SizedBox(width: 66), // Space for center button
                      _buildNavItem(3, AppAssets.iconGarden, "My Garden", context),
                      _buildNavItem(4, AppAssets.iconUser, "Profile", context),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, String assetPath, String label, BuildContext context) {
    final isActive = currentIndex == index;
    final color = isActive ? context.appColorScheme.primaryColor : context.appColorScheme.inactiveTabColor;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => onTap?.call(index),
      child: SizedBox(
        width: 60,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(assetPath, width: 26, height: 26, color: color),
            const SizedBox(height: 4),
            Text(
              label,
              style: context.appStyle.roboto13Regular.copyWith(
                fontSize: 11,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
