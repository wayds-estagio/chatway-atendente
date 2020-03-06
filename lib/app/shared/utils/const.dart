import 'package:chatway_atendente/app/shared/models/user_model.dart';

class Consts {
  static String baseURL = 'http://192.168.1.102:5000';

  static final user = User(
    id: "5e5e532aa1a94923c47e710e",
    nome: "Atendente_01",
    login: "Atendente_01",
    senha: "123",
    unidade: "5e5e52eba1a94923c47e710c",
    empresa: "5e5e52b7a1a94923c47e710b",
    dispositivo: null,
    tipo: "Atendente",
    datacriacao: DateTime.parse("2020-02-28T11:59:44.975Z"),
  );
}
