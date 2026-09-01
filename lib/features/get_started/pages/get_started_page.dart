import 'package:flutter/material.dart';
import 'package:hubx_case/extensions/build_context_extension.dart';
import 'package:hubx_case/core/constants/app_assets.dart';
import 'package:hubx_case/core/constants/app_routes.dart';

part '../widgets/background_blob_left.dart';
part '../widgets/background_blob_right.dart';
part '../widgets/main_content.dart';
part '../widgets/header_texts.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          fit: StackFit.expand,
          children: const [
            _BackgroundBlobLeft(),
            _BackgroundBlobRight(),
            _MainContent(),
            _HeaderTexts(),
          ],
        ),
      ),
    );
  }
}
