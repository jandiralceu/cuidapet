import 'package:mobx/mobx.dart';

import '../../../models/models.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  @readonly
  UserModel? _userLogged;

  @action
  Future<void> loadUserLogged() async {
    _userLogged = UserModel.empty();
  }
}
