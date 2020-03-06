import 'package:chatway_atendente/app/pages/splash/splash_controller.dart';
import 'package:chatway_atendente/app/pages/splash/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:chatway_atendente/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
      ];

  @override
  List<Router> get routers => [
        Router("/splash",
            child: (_, args) => SplashPage(),
            transition: TransitionType.rightToLeft),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
