import 'package:flutter_modular/flutter_modular.dart';

import 'home/home.dart';
import 'login/login.dart';
import 'register/register.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => AuthHomePage(authStore: Modular.get()),
        ),
        ModuleRoute('/login', module: LoginModule()),
        ModuleRoute('/register', module: RegisterModule())
      ];
}
