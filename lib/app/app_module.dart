import 'package:chatway_atendente/app/modules/home/home_module.dart';
import 'package:chatway_atendente/app/stores/chat_store.dart';
import 'package:chatway_atendente/app/pages/splash/splash_controller.dart';
import 'package:chatway_atendente/app/pages/splash/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:chatway_atendente/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ChatStore()),
        Bind((i) => SplashController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => SplashPage(),
            transition: TransitionType.rightToLeft),
        Router("/home",
            module: HomeModule(), transition: TransitionType.downToUp),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
