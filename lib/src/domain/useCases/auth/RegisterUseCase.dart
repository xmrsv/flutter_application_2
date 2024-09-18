import 'package:shopyfile_v1/src/domain/models/User.dart';
import 'package:shopyfile_v1/src/domain/repository/AuthRepository.dart';

class RegisterUseCase {
  AuthRepository repository;
  RegisterUseCase(this.repository);

  run(User user) => repository.register(user);
}