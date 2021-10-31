import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:packs_flutter/authentication/bloc/authentication_bloc.dart';
import 'package:packs_flutter/features/authentication/presentation/bloc/login_bloc.dart';
import 'package:user_repository/user_repository.dart';

class AppWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    AuthenticationRepository _authenticationRepository;
    UserRepository _userRepository;
    return MultiBlocProvider(
        providers: [
          BlocProvider<AuthenticationBloc>(
              create: (_) => AuthenticationBloc(
                  authenticationRepository: AuthenticationRepository(),
                  userRepository: UserRepo))

          /*  BlocProvider<LoginBloc>(create: (_) => LoginBloc()) */
        ],
        child: MaterialApp(
          title: 'Packs Flutter',
          theme: ThemeData(primarySwatch: Colors.purple),
          debugShowCheckedModeBanner: false,
        ).modular()); //added by extension);
  }
}
