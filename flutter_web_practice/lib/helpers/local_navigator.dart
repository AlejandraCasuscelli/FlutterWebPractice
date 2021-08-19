import 'package:flutter/cupertino.dart';
import 'package:flutter_web_practice/constants/controllers.dart';
import 'package:flutter_web_practice/routing/router.dart';
import 'package:flutter_web_practice/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: tipsviewPageRoute,
    );
