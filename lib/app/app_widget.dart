import 'package:chatway_atendente/app/shared/themes/light/light.theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'ChatWay - Atendente',
      theme: lightTheme(),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
