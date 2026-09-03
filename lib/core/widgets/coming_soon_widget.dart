import 'package:flutter/material.dart';
import 'package:hubx_case/extensions/build_context_extension.dart';

enum ComingSoonAnimationType { pulse, floating, swinging }

class ComingSoonWidget extends StatefulWidget {
  final String title;
  final IconData icon;
  final ComingSoonAnimationType animationType;
  final String description;

  const ComingSoonWidget({
    super.key,
    required this.title,
    required this.icon,
    this.animationType = ComingSoonAnimationType.pulse,
    this.description =
        "This page is currently under development. We will open it very soon!",
  });

  @override
  State<ComingSoonWidget> createState() => _ComingSoonWidgetState();
}

class _ComingSoonWidgetState extends State<ComingSoonWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnimation;
  late final Animation<Offset> _slideAnimation;
  late final Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();

    switch (widget.animationType) {
      case ComingSoonAnimationType.pulse:
        _controller = AnimationController(
          vsync: this,
          duration: const Duration(milliseconds: 1200),
        )..repeat(reverse: true);
        _scaleAnimation = Tween<double>(
          begin: 0.88,
          end: 1.12,
        ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
        break;

      case ComingSoonAnimationType.floating:
        _controller = AnimationController(
          vsync: this,
          duration: const Duration(milliseconds: 1800),
        )..repeat(reverse: true);
        _slideAnimation = Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(0, -0.15),
        ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
        break;

      case ComingSoonAnimationType.swinging:
        _controller = AnimationController(
          vsync: this,
          duration: const Duration(milliseconds: 1000),
        )..repeat(reverse: true);
        _rotationAnimation = Tween<double>(
          begin: -0.10,
          end: 0.10,
        ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
        break;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildAnimatedIcon(BuildContext context) {
    final iconWidget = Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: context.appColorScheme.primaryColor.withValues(alpha: 0.1),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: context.appColorScheme.primaryColor.withValues(alpha: 0.15),
            blurRadius: 20,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Icon(widget.icon, size: 64, color: context.appColorScheme.primaryColor),
    );

    switch (widget.animationType) {
      case ComingSoonAnimationType.pulse:
        return ScaleTransition(scale: _scaleAnimation, child: iconWidget);

      case ComingSoonAnimationType.floating:
        return SlideTransition(position: _slideAnimation, child: iconWidget);

      case ComingSoonAnimationType.swinging:
        return RotationTransition(turns: _rotationAnimation, child: iconWidget);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColorScheme.backgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildAnimatedIcon(context),
              const SizedBox(height: 36),
              Text(
                widget.title,
                style: context.appStyle.roboto24Medium.copyWith(
                  color: context.appColorScheme.textColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                widget.description,
                style: context.appStyle.roboto16Regular.copyWith(
                  color: context.appColorScheme.textColor.withValues(alpha: 0.7),
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
