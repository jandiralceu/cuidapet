import 'package:flutter_modular/flutter_modular.dart';

import '../../core/core.dart';
import 'auth/auth_store.dart';

class CoreModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((_) => AuthStore(), export: true),
    Bind.lazySingleton<RestClient>((_) => DioRestClient(), export: true),
  ];
}
