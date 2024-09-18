import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/domain/utils/Resource.dart';
import 'package:flutter_application_2/src/presentation/pages/utils/BlocFormItem.dart';

class LoginState extends Equatable {
  final BlocFormItem email;
  final BlocFormItem password;
  final Resource? response;
  final GlobalKey <FormState>? formKey;

  const LoginState ({
    this.email = const BlocFormItem( error: 'Ingreser su email'),
    this.password = const BlocFormItem( error: 'Ingreser su password'),
    this.formKey,
    this.response,
  });

  LoginState copyWith ({
    BlocFormItem? email,
    BlocFormItem? password,
    Resource? response, required GlobalKey<FormState> formKey,
  }){
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      formKey: formKey,
      response: response,
    );
  }

  @override

  List<Object?> get props => [email, password, response];
}