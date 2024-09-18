import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_2/src/domain/useCases/auth/AuthUseCases.dart';
import 'package:flutter_application_2/src/domain/utils/Resource.dart';
import 'package:flutter_application_2/src/presentation/pages/auth/login/bloc/LoginEvent.dart';
import 'package:flutter_application_2/src/presentation/pages/auth/login/bloc/LoginState.dart';
import 'package:flutter_application_2/src/presentation/pages/utils/BlocFormItem.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  AuthUseCases authUseCases;

  LoginBloc(this.authUseCases) : super(LoginState()) {
    on<InitEvent>(_onInitEvent);
    on<EmailChange>(_onEmailChange);
    on<PasswordChange>(_onPasswordChange);
    on<LoginSubmit>(_onLoginSubmit);
    on<LoginFormReset>(_onLoginFormReset);
    on<LoginSaveUserSession>(_onLoginSaveUserSession);
  }

  final formKey = GlobalKey<FormState>();

  Future<void> _onInitEvent(InitEvent event, Emitter<LoginState> emit) async {
    // AuthResponse? authResponse = await  a
    emit(state.copyWith(formKey: formKey));
  }

  Future<void> _onLoginSaveUserSession(
      LoginSaveUserSession event, Emitter<LoginState> emit) async {}

  Future<void> _onLoginFormReset(
      LoginFormReset event, Emitter<LoginState> emit) async {
    state.formKey?.currentState?.reset();
  }

  Future<void> _onEmailChange(
      EmailChange event, Emitter<LoginState> emit) async {
    emit(state.copyWith(
        email: BlocFormItem(
            value: event.email.value,
            error: event.email.value.isEmpty ? null : 'Ingrese el email'),
        formKey: formKey));
  }

  Future<void> _onPasswordChange(
      PasswordChange event, Emitter<LoginState> emit) async {
    emit(state.copyWith(
        email: BlocFormItem(
            value: event.password.value,
            error:
                event.password.value.isEmpty && event.password.value.length >= 8
                    ? null
                    : 'Ingrese la contraseña'),
        formKey: formKey));
  }

  Future<void> _onLoginSubmit(
      LoginSubmit event, Emitter<LoginState> emit) async {
    emit(state.copyWith(response: Loading(), formKey: formKey));
    Resource response =
        await authUseCases.login.run(state.email.value, state.password.value);

    emit(state.copyWith(response: response, formKey: formKey));
  }
}