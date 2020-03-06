// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$_chatStoreAtom = Atom(name: '_HomeControllerBase._chatStore');

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
      Atom(name: '_HomeControllerBase._chatRepository');

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
      Atom(name: '_HomeControllerBase._signalrService');

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

  final _$_chatServiceAtom = Atom(name: '_HomeControllerBase._chatService');

  @override
  ChatService get _chatService {
    _$_chatServiceAtom.context.enforceReadPolicy(_$_chatServiceAtom);
    _$_chatServiceAtom.reportObserved();
    return super._chatService;
  }

  @override
  set _chatService(ChatService value) {
    _$_chatServiceAtom.context.conditionallyRunInAction(() {
      super._chatService = value;
      _$_chatServiceAtom.reportChanged();
    }, _$_chatServiceAtom, name: '${_$_chatServiceAtom.name}_set');
  }

  final _$fetchAsyncAction = AsyncAction('fetch');

  @override
  Future<dynamic> fetch() {
    return _$fetchAsyncAction.run(() => super.fetch());
  }

  @override
  String toString() {
    final string = '';
    return '{$string}';
  }
}
