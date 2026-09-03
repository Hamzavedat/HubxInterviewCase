import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformActionDialog extends StatelessWidget {
  final String title;
  final String content;
  final String buttonText;
  final VoidCallback? onPressed;

  const PlatformActionDialog({
    super.key,
    required this.title,
    required this.content,
    this.buttonText = "OK",
    this.onPressed,
  });

  static Future<T?> show<T>({
    required BuildContext context,
    required String title,
    required String content,
    String buttonText = "OK",
    VoidCallback? onPressed,
  }) {
    return showDialog<T>(
      context: context,
      builder: (ctx) => PlatformActionDialog(
        title: title,
        content: content,
        buttonText: buttonText,
        onPressed: onPressed,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isIOS = Theme.of(context).platform == TargetPlatform.iOS;

    if (isIOS) {
      return CupertinoAlertDialog(
        title: Text(title),
        content: Padding(padding: const EdgeInsets.only(top: 8), child: Text(content)),
        actions: [
          CupertinoDialogAction(
            onPressed: () {
              Navigator.of(context).pop();
              onPressed?.call();
            },
            child: Text(buttonText),
          ),
        ],
      );
    }

    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            onPressed?.call();
          },
          child: Text(buttonText),
        ),
      ],
    );
  }
}
