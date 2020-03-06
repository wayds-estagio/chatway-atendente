// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_open_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatsOpenController on _ChatsOpenControllerBase, Store {
  Computed<List<Chat>> _$chatsOpenComputed;

  @override
  List<Chat> get chatsOpen =>
      (_$chatsOpenComputed ??= Computed<List<Chat>>(() => super.chatsOpen))
          .value;
  Computed<bool> _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading)).value;

  final _$loadingAtom = Atom(name: '_ChatsOpenControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$refreshChatsOpenAsyncAction = AsyncAction('refreshChatsOpen');

  @override
  Future<dynamic> refreshChatsOpen() {
    return _$refreshChatsOpenAsyncAction.run(() => super.refreshChatsOpen());
  }

  final _$_ChatsOpenControllerBaseActionController =
      ActionController(name: '_ChatsOpenControllerBase');

  @override
  dynamic setLoading(bool value) {
    final _$actionInfo =
        _$_ChatsOpenControllerBaseActionController.startAction();
    try {
      return super.setLoading(value);
    } finally {
      _$_ChatsOpenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'loading: ${loading.toString()},chatsOpen: ${chatsOpen.toString()},isLoading: ${isLoading.toString()}';
    return '{$string}';
  }
}
