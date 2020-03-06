import 'package:chatway_atendente/app/modules/chats_attended/chats_attended_controller.dart';
import 'package:chatway_atendente/app/modules/chats_attended/chats_attended_module.dart';
import 'package:chatway_atendente/app/modules/chats_open/chats_open_controller.dart';
import 'package:chatway_atendente/app/modules/chats_open/chats_open_module.dart';
import 'package:chatway_atendente/app/modules/home/home_controller.dart';
import 'package:chatway_atendente/app/repositories/chat_repository.dart';
import 'package:chatway_atendente/app/services/chat_service.dart';
import 'package:chatway_atendente/app/services/signalr/signalr_service.dart';

import 'package:chatway_atendente/app/stores/chat_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:chatway_atendente/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        //*Controllers Mobx
        Bind((i) => HomeController(i.get<ChatStore>(), i.get<ChatRepository>(),
            i.get<SignalrService>(), i.get<ChatService>())),
        Bind((i) =>
            ChatsAttendedController(i.get<ChatStore>(), i.get<ChatService>())),
        Bind((i) => ChatsOpenController(
            i.get<ChatStore>(), i.get<ChatService>(), i.get<SignalrService>())),

        //*Repositories and Services
        Bind((i) => ChatRepository()),
        Bind((i) => SignalrService(i.get<ChatStore>())),
        Bind((i) => ChatService()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => HomePage(),
            transition: TransitionType.noTransition),
        Router("/chatsAttended", module: ChatsAttendedModule()),
        Router("/chatsOpen", module: ChatsOpenModule()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
