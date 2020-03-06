import 'package:flutter_modular/flutter_modular.dart';
import 'package:chatway_atendente/app/modules/chats_open/chats_open_page.dart';

class ChatsOpenModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ChatsOpenPage()),
      ];

  static Inject get to => Inject<ChatsOpenModule>.of();
}
