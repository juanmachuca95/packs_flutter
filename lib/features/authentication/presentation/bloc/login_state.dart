part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginSubmitted extends LoginState {
  final String email;
  bool get isValidEmail {
    RegExp regExp = new RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if (regExp.hasMatch(email)) {
      return true;
    }
    return false;
  }

  final String? password;
  bool get isValidPassword {
    if (password != null) {
      return true;
    }
    return false;
  }

  final FormStatus formStatus;

  LoginSubmitted({
    this.email = "",
    this.password = "",
    this.formStatus = const InitialFormStatus(),
  });
}
