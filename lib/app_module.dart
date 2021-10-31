import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:packs_flutter/app.dart';
import 'package:packs_flutter/features/home/home_module.dart';
import 'package:packs_flutter/features/login/login_module.dart';
import 'package:user_repository/user_repository.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) => App(
                authenticationRepository: AuthenticationRepository(),
                userRepository: UserRepository())),
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/login/', module: LoginModule())
      ];
}
