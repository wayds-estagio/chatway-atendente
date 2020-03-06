import 'package:chatway_atendente/app/modules/chats_attended/chats_attended_controller.dart';
import 'package:chatway_atendente/app/stores/chat_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:chatway_atendente/app/modules/chats_attended/chats_attended_page.dart';

class ChatsAttendedModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ChatsAttendedController(i.get<ChatStore>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ChatsAttendedPage()),
      ];

  static Inject get to => Inject<ChatsAttendedModule>.of();
}
