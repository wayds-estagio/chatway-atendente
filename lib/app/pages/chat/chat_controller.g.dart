// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatController on _ChatControllerBase, Store {
  Computed<List<Chat>> _$listChatsComputed;

  @override
  List<Chat> get listChats =>
      (_$listChatsComputed ??= Computed<List<Chat>>(() => super.listChats))
          .value;

  final _$inputMessageControllerAtom =
      Atom(name: '_ChatControllerBase.inputMessageController');

  @override
  TextEditingController get inputMessageController {
    _$inputMessageControllerAtom.context
        .enforceReadPolicy(_$inputMessageControllerAtom);
    _$inputMessageControllerAtom.reportObserved();
    return super.inputMessageController;
  }

  @override
  set inputMessageController(TextEditingController value) {
    _$inputMessageControllerAtom.context.conditionallyRunInAction(() {
      super.inputMessageController = value;
      _$inputMessageControllerAtom.reportChanged();
    }, _$inputMessageControllerAtom,
        name: '${_$inputMessageControllerAtom.name}_set');
  }

  final _$inputMessageAtom = Atom(name: '_ChatControllerBase.inputMessage');

  @override
  String get inputMessage {
    _$inputMessageAtom.context.enforceReadPolicy(_$inputMessageAtom);
    _$inputMessageAtom.reportObserved();
    return super.inputMessage;
  }

  @override
  set inputMessage(String value) {
    _$inputMessageAtom.context.conditionallyRunInAction(() {
      super.inputMessage = value;
      _$inputMessageAtom.reportChanged();
    }, _$inputMessageAtom, name: '${_$inputMessageAtom.name}_set');
  }

  final _$setInputMessageAsyncAction = AsyncAction('setInputMessage');

  @override
  Future setInputMessage(String value) {
    return _$setInputMessageAsyncAction.run(() => super.setInputMessage(value));
  }

  final _$_ChatControllerBaseActionController =
      ActionController(name: '_ChatControllerBase');

  @override
  dynamic clearInputMessage() {
    final _$actionInfo = _$_ChatControllerBaseActionController.startAction();
    try {
      return super.clearInputMessage();
    } finally {
      _$_ChatControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'inputMessageController: ${inputMessageController.toString()},inputMessage: ${inputMessage.toString()},listChats: ${listChats.toString()}';
    return '{$string}';
  }
}
