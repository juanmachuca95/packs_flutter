import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:packs_flutter/features/authentication/presentation/bloc/login_bloc.dart';

class AppWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider<LoginBloc>(create: (_) => LoginBloc())],
        child: MaterialApp(
          title: 'Packs Flutter',
          theme: ThemeData(primarySwatch: Colors.purple),
          debugShowCheckedModeBanner: false,
        ).modular()); //added by extension);
  }
}
