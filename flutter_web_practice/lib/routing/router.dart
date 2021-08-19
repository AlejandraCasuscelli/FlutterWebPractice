import 'package:flutter/material.dart';
import 'package:flutter_web_practice/pages/preguntas/preguntashabitos.dart';
import 'package:flutter_web_practice/pages/tips/tips.dart';
import 'package:flutter_web_practice/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name) {
    case tipsviewPageRoute:
      return _getPageRoute(TipsPage());
    case preguntasHabitosPageRoute:
      return _getPageRoute(PreguntasHabitosPage());
    // case clientsPageRoute:
    //   return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(TipsPage());

  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}