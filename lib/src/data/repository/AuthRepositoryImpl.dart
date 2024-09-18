import 'package:flutter_application_2/src/data/dataSource/remote/AuthService.dart';
import 'package:flutter_application_2/src/domain/models/AuthResponse.dart';
import 'package:flutter_application_2/src/domain/models/User.dart';
import 'package:flutter_application_2/src/domain/repository/AuthRepository.dart';
import 'package:flutter_application_2/src/domain/utils/Resource.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthService authService;

  AuthRepositoryImpl(this.authService);

  @override
  Future<AuthResponse?> getUserSession() {
    // TODO: implement getUserSession
    throw UnimplementedError();
  }

  @override
  Future<Resource<AuthResponse>> login(String email, String password) {
    return authService.login(email, password);
  }
  @override
  Future<Resource<AuthResponse>> register(User user) {
   return authService.register(user);
  }

  @override
  Future<bool> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  

  @override
  Future<void> saveUserSession(AuthResponse authResponse) {
    // TODO: implement saveUserSession
    throw UnimplementedError();
  }
  
}