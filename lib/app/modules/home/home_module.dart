import 'package:chatway_atendente/app/modules/chats_attended/chats_attended_controller.dart';
import 'package:chatway_atendente/app/modules/chats_attended/chats_attended_module.dart';
import 'package:chatway_atendente/app/modules/chats_open/chats_open_controller.dart';
import 'package:chatway_atendente/app/modules/chats_open/chats_open_module.dart';
import 'package:chatway_atendente/app/modules/home/home_controller.dart';
import 'package:chatway_atendente/app/stores/chat_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:chatway_atendente/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
        Bind((i) => ChatsAttendedController(i.get<ChatStore>())),
        Bind((i) => ChatsOpenController(i.get<ChatStore>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router("/chatsAttended", module: ChatsAttendedModule()),
        Router("/chatsOpen", module: ChatsOpenModule()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
