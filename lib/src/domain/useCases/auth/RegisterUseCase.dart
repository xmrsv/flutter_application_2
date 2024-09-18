import 'package:flutter_application_2/src/domain/models/User.dart';
import 'package:flutter_application_2/src/domain/repository/AuthRepository.dart';

class RegisterUseCase {
  AuthRepository repository;
  RegisterUseCase(this.repository);

  run(User user) => repository.register(user);
}