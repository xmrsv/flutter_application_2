import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_application_2/src/presentation/pages/auth/login/bloc/LoginBloc.dart';
import 'package:flutter_application_2/src/presentation/pages/auth/login/bloc/LoginEvent.dart';
import 'package:flutter_application_2/src/presentation/pages/auth/login/bloc/LoginState.dart';
import 'package:flutter_application_2/src/presentation/pages/utils/BlocFormItem.dart';
import 'package:flutter_application_2/src/presentation/widget/DefaultTextField.dart';
class LoginContent extends StatelessWidget {
  LoginBloc? bloc;
  LoginState state;

  LoginContent(this.bloc, this.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: state.formKey,
      //color: Colors.amber,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _imageBackground(context),
          Container(
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.3),
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Column(
                children: [
                  _iconPerson(),
                  _textLogin(),
                  _texFieldEmail(),
                  _texFieldPassword(),
                  _buttonLogin(context),
                  _buttonRegister(context)
                ],
              )),
        ],
      ),
    );
  }

  Widget _iconPerson() {
    return Icon(
      Icons.person,
      color: Colors.white,
      size: 125,
    );
  }

  Widget _textLogin() {
    return Text(
      'LOGIN',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _texFieldEmail() {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      child: DefaultTextField(
        label: 'Email',
        icon: Icons.email,
        onChanged: (text) {
          bloc?.add(EmailChange(email: BlocFormItem(value: text)));
        },
        validator: (value) {
          return state.email.error;
        },
      ),
    );
  }

  Widget _texFieldPassword() {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Password',
          prefixIcon: Icon(Icons.lock),
        ),
        onChanged: (text) {
          bloc?.add(PasswordChange(password: BlocFormItem(value: text)));
        },
        obscureText: true,
        validator: (value) {
          return state.password.error;
        },
      ),
    );
  }

  Widget _imageBackground(BuildContext context) {
    return Image.asset(
      'assets/img/background2.jpg',
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.cover,
      color: Colors.black54,
      colorBlendMode: BlendMode.darken,
    );
  }

  Widget _buttonLogin(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 15),
        child: ElevatedButton(
            onPressed: () {
              if (state.formKey!.currentState!.validate()) {
                bloc?.add(LoginSubmit());
              } else {
                Fluttertoast.showToast(
                    msg: 'El formulario jijja xd',
                    toastLength: Toast.LENGTH_LONG);
              }
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: Text(
              'Iniciar Sesion',
              style: TextStyle(color: Colors.white),
            )));
  }

  Widget _buttonRegister(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 15),
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'register');
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            child: Text(
              'Register',
              style: TextStyle(color: Colors.white),
            )));
  }
}