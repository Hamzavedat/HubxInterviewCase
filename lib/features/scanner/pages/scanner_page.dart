import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';
import 'package:hubx_case/core/widgets/platform_action_dialog.dart';
import 'package:hubx_case/extensions/build_context_extension.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  final MobileScannerController _controller = MobileScannerController();
  bool _isProcessing = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onDetect(BarcodeCapture capture) {
    if (_isProcessing) return;

    final List<Barcode> barcodes = capture.barcodes;
    if (barcodes.isEmpty) return;

    final String? code = barcodes.first.rawValue;
    if (code == null || code.isEmpty) return;

    setState(() {
      _isProcessing = true;
    });

    PlatformActionDialog.show(
      context: context,
      title: "QR Code Scanned",
      content: code,
      buttonText: "OK",
      onPressed: () {
        if (mounted) {
          setState(() {
            _isProcessing = false;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColorScheme;
    final styles = context.appStyle;

    return Scaffold(
      backgroundColor: colors.black,
      body: Stack(
        children: [
          MobileScanner(controller: _controller, onDetect: _onDetect),

          // Center dashed box overlay using mobkit_dashed_border
          Center(
            child: Container(
              width: 260,
              height: 260,
              decoration: BoxDecoration(
                border: DashedBorder.all(
                  color: colors.primaryColor,
                  width: 4,
                  dashLength: 32,
                  isOnlyCorner: true,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),

          // Header with Back & Flash controls
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_new, color: colors.white),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  Text(
                    "Scan Plant QR",
                    style: styles.roboto16Medium.copyWith(color: colors.white),
                  ),
                  ValueListenableBuilder<MobileScannerState>(
                    valueListenable: _controller,
                    builder: (context, state, child) {
                      return IconButton(
                        icon: Icon(
                          state.torchState == TorchState.on
                              ? Icons.flash_on
                              : Icons.flash_off,
                          color: colors.white,
                        ),
                        onPressed: () => _controller.toggleTorch(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          // Footer hint text
          Positioned(
            bottom: 60,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: colors.black.withValues(alpha: 0.6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Align QR code within the frame to scan",
                  style: styles.roboto15Regular.copyWith(color: colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
