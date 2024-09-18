import 'package:injectable/injectable.dart';
import 'package:flutter_application_2/src/data/dataSource/remote/AuthService.dart';
import 'package:flutter_application_2/src/data/repository/AuthRepositoryImpl.dart';
import 'package:flutter_application_2/src/domain/repository/AuthRepository.dart';
import 'package:flutter_application_2/src/domain/useCases/auth/AuthUseCases.dart';
import 'package:flutter_application_2/src/domain/useCases/auth/LoginUseCase.dart';
import 'package:flutter_application_2/src/domain/useCases/auth/RegisterUseCase.dart';

@module
abstract class AppModule {
  @injectable
  AuthService get authService => AuthService();

  @injectable
  AuthRepository get authRepository => AuthRepositoryImpl(authService);
  @injectable
  AuthUseCases get authUseCases => AuthUseCases(
      login: LoginUseCase(authRepository),
      register: RegisterUseCase(authRepository));
}
