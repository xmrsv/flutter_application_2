import 'package:flutter_application_2/src/data/dataSource/remote/AuthService.dart';
import 'package:flutter_application_2/src/data/repository/AuthRepositoryImpl.dart';
import 'package:flutter_application_2/src/domain/useCase/auth/AuthUseCases.dart';
import 'package:flutter_application_2/src/domain/useCase/auth/LoginUseCase.dart';
import 'package:flutter_application_2/src/domain/useCase/auth/RegisterUseCase.dart';
import 'package:injectable/injectable.dart';

import '../domain/repository/AuthRepository.dart';

@module
abstract class AppModule {


  // Servicios
  @injectable
  AuthService get authService => AuthService();

  // Repository
  AuthRepository get authRepository => 
    AuthRepositoryImpl(authService);

  // Use Cases
  AuthUseCases get authUseCase => AuthUseCases(
    login:LoginUseCase(authRepository),
    register: RegisterUseCase(authRepository)
  );
} 