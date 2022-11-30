import 'package:flutter_modular/flutter_modular.dart';

import 'modules/modules.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/auth', module: AuthModule()),
        ModuleRoute('/home', module: HomeModule()),
      ];
}
