import 'package:flutter/material.dart';
import 'package:hubx_case/data/models/question_model.dart';
import 'package:hubx_case/extensions/build_context_extension.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:webview_flutter/webview_flutter.dart';

class QuestionDetailPage extends StatefulWidget {
  final QuestionModel question;

  const QuestionDetailPage({super.key, required this.question});

  @override
  State<QuestionDetailPage> createState() => _QuestionDetailPageState();
}

class _QuestionDetailPageState extends State<QuestionDetailPage> {
  late final WebViewController _controller;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.transparent)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (String url) {
            if (mounted) {
              setState(() {
                _isLoading = false;
              });
            }
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.question.uri));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColorScheme.backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                widget.question.title,
                style: context.appStyle.roboto16Medium.copyWith(color: context.appColorScheme.white),
              ),
              background: Hero(
                tag: 'question_${widget.question.id}',
                child: CachedNetworkImage(
                  imageUrl: widget.question.imageUri,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Stack(
              children: [
                WebViewWidget(controller: _controller),
                if (_isLoading) const Center(child: CircularProgressIndicator()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
