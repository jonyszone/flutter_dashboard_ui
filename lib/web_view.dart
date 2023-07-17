import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebView extends StatefulWidget {
  WebView({Key? key, required this.url}) : super(key: key);

  final String url;

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {

  double _progress = 0;
  late InAppWebViewController inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          var isLastPage = inAppWebViewController.canGoBack();

          if (await isLastPage) {
            inAppWebViewController.goBack();
            return false;
          }

          return true;
        },
        child: SafeArea(
          child: Scaffold(
            body: Stack(
              children: [
                InAppWebView(
                  initialUrlRequest: URLRequest(
                    url: Uri.parse(widget.url),
                  ),
                  onWebViewCreated: (InAppWebViewController controller) {
                    inAppWebViewController = controller;
                  },
                  onProgressChanged:
                      (InAppWebViewController controller, int progress) {
                    setState(() {
                      _progress = progress / 100;
                    });
                  },
                ),
                _progress < 1
                    ? Container(
                        child: Center(
                          child: CircularProgressIndicator(
                            value: _progress,
                          ),
                        ),
                      )
                    : SizedBox()
              ],
            ),
          ),
        ));
  }
}
