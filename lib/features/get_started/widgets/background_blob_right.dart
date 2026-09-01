part of '../pages/get_started_page.dart';

class _BackgroundBlobRight extends StatelessWidget {
  const _BackgroundBlobRight();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
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
