import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:packs_flutter/features/authentication/presentation/bloc/login_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey =
      GlobalKey<FormState>(debugLabel: '_loginForm');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
          child: Form(
        key: _formKey,
        child: _crearFormulario(),
      )),
    );
  }

  Widget _crearFormulario() {
    return BlocListener(
      listener: (context, state) {},
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: _logo(),
          ),
          Padding(
            //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: _crearEmail(),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 0),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: _crearPassword(),
          ),
          MaterialButton(
            onPressed: () {},
            child: Text(
              'Forgot Password',
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
          ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: _buttonSubmit(),
          ),
          SizedBox(
            height: 130,
          ),
          Text('New User? Create Account')
        ],
      ),
    );
  }

  Widget _logo() {
    return Center(
      child: Container(
          width: 200,
          height: 150,
          child: Image.asset(
            'assets/images/flutter.png',
            fit: BoxFit.contain,
          )),
    );
  }

  Widget _crearEmail() {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Dirección de correo electrónico',
            hintText: 'Ingresa un email . . . '),
        validator: (value) {
          if (state is LoginSubmitted) {
            return state.isValidEmail
                ? null
                : 'El correo ingresado es invalido.';
          }
        },
        onChanged: (value) =>
            context.read<LoginBloc>().add(EmailChanged(email: value)),
      );
    });
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
          hintText: 'Ingresa tu password . . .'),
    );
  }

  Widget _buttonSubmit() {
    return MaterialButton(
      onPressed: () {},
      child: Text(
        'Login',
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
    );
  }
}
