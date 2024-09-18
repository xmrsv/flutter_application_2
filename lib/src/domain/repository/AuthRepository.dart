import 'package:flutter_application_2/src/domain/models/AuthResponse.dart';
import 'package:flutter_application_2/src/domain/models/User.dart';
import 'package:flutter_application_2/src/domain/utils/Resource.dart';

abstract class AuthRepository {
  Future<AuthResponse?> getUserSession();
  Future<bool> logout();
  Future<void> saveUserSession(AuthResponse authResponse);
  Future<Resource<AuthResponse>> login(String email, String password);
  Future<Resource<AuthResponse>> register(User user);
}
