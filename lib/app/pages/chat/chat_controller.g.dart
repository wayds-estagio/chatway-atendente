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

  final _$_chatStoreAtom = Atom(name: '_ChatControllerBase._chatStore');

  @override
  ChatStore get _chatStore {
    _$_chatStoreAtom.context.enforceReadPolicy(_$_chatStoreAtom);
    _$_chatStoreAtom.reportObserved();
    return super._chatStore;
  }

  @override
  set _chatStore(ChatStore value) {
    _$_chatStoreAtom.context.conditionallyRunInAction(() {
      super._chatStore = value;
      _$_chatStoreAtom.reportChanged();
    }, _$_chatStoreAtom, name: '${_$_chatStoreAtom.name}_set');
  }

  final _$_chatRepositoryAtom =
      Atom(name: '_ChatControllerBase._chatRepository');

  @override
  ChatRepository get _chatRepository {
    _$_chatRepositoryAtom.context.enforceReadPolicy(_$_chatRepositoryAtom);
    _$_chatRepositoryAtom.reportObserved();
    return super._chatRepository;
  }

  @override
  set _chatRepository(ChatRepository value) {
    _$_chatRepositoryAtom.context.conditionallyRunInAction(() {
      super._chatRepository = value;
      _$_chatRepositoryAtom.reportChanged();
    }, _$_chatRepositoryAtom, name: '${_$_chatRepositoryAtom.name}_set');
  }

  final _$_signalrServiceAtom =
      Atom(name: '_ChatControllerBase._signalrService');

  @override
  SignalrService get _signalrService {
    _$_signalrServiceAtom.context.enforceReadPolicy(_$_signalrServiceAtom);
    _$_signalrServiceAtom.reportObserved();
    return super._signalrService;
  }

  @override
  set _signalrService(SignalrService value) {
    _$_signalrServiceAtom.context.conditionallyRunInAction(() {
      super._signalrService = value;
      _$_signalrServiceAtom.reportChanged();
    }, _$_signalrServiceAtom, name: '${_$_signalrServiceAtom.name}_set');
  }

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

  final _$isAttendedAtom = Atom(name: '_ChatControllerBase.isAttended');

  @override
  bool get isAttended {
    _$isAttendedAtom.context.enforceReadPolicy(_$isAttendedAtom);
    _$isAttendedAtom.reportObserved();
    return super.isAttended;
  }

  @override
  set isAttended(bool value) {
    _$isAttendedAtom.context.conditionallyRunInAction(() {
      super.isAttended = value;
      _$isAttendedAtom.reportChanged();
    }, _$isAttendedAtom, name: '${_$isAttendedAtom.name}_set');
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
  dynamic setIsAttended(bool value) {
    final _$actionInfo = _$_ChatControllerBaseActionController.startAction();
    try {
      return super.setIsAttended(value);
    } finally {
      _$_ChatControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic sendMessage(String textMessage, String chatId) {
    final _$actionInfo = _$_ChatControllerBaseActionController.startAction();
    try {
      return super.sendMessage(textMessage, chatId);
    } finally {
      _$_ChatControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'inputMessageController: ${inputMessageController.toString()},inputMessage: ${inputMessage.toString()},isAttended: ${isAttended.toString()},listChats: ${listChats.toString()}';
    return '{$string}';
  }
}
