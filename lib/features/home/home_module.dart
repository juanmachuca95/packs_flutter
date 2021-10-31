import 'package:flutter_modular/flutter_modular.dart';
import 'package:packs_flutter/features/home/presentation/pages/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => HomePage())];
}
