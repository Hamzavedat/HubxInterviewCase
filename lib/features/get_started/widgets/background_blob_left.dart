part of '../pages/get_started_page.dart';

class _BackgroundBlobLeft extends StatelessWidget {
  const _BackgroundBlobLeft();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
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
                color: context.appColorScheme.blobColor.withValues(alpha: 0.45),
                blurRadius: 100,
                spreadRadius: 1,
                blurStyle: BlurStyle.normal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
