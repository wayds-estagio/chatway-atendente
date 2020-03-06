// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_attended_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatsAttendedController on _ChatsAttendedControllerBase, Store {
  Computed<List<Chat>> _$chatsAttendedComputed;

  @override
  List<Chat> get chatsAttended => (_$chatsAttendedComputed ??=
          Computed<List<Chat>>(() => super.chatsAttended))
      .value;
  Computed<bool> _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading)).value;

  final _$loadingAtom = Atom(name: '_ChatsAttendedControllerBase.loading');

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

  final _$_ChatsAttendedControllerBaseActionController =
      ActionController(name: '_ChatsAttendedControllerBase');

  @override
  dynamic setLoading(bool value) {
    final _$actionInfo =
        _$_ChatsAttendedControllerBaseActionController.startAction();
    try {
      return super.setLoading(value);
    } finally {
      _$_ChatsAttendedControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'loading: ${loading.toString()},chatsAttended: ${chatsAttended.toString()},isLoading: ${isLoading.toString()}';
    return '{$string}';
  }
}
