import 'package:flutter_application_2/src/domain/useCase/auth/LoginUseCase.dart';
import 'package:flutter_application_2/src/domain/useCase/auth/RegisterUseCase.dart';

class AuthUseCases {
  LoginUseCase login;
  RegisterUseCase register;

  AuthUseCases({
    required this.login, 
    required this.register
  });
}