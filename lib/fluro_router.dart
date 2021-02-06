import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_urls_fixed/main.dart';

class FRouter {
  static final router = FluroRouter();

  static Handler _homeHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    var code = params['code']?.first;
    var state = params['state']?.first;
    print(code);
    print(state);
    return MyHomePage(
      title: "Hello World",
    );
  });
  static void setupRouter() {
    router.define("home", handler: _homeHandler);
  }
}
