import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:packs_flutter/home.dart';

import 'features/second.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => HomePage()),
        ChildRoute(
          '/second',
          child: (context, args) => SecondPage(),
          transition: TransitionType.custom,
          customTransition: CustomTransition(
            transitionBuilder: (context, anim1, anim2, child) {
              return FadeTransition(
                opacity: anim1,
                child: child,
              );
            },
          ),
        )
      ];
}
