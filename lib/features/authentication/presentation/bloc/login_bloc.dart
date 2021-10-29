import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:packs_flutter/utils/form_status.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {});
  }
}
