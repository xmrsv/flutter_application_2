import 'package:flutter_application_2/src/domain/repository/AuthRepository.dart';

class LoginUseCase {
 
 AuthRepository repository;
 LoginUseCase(this.repository);

 run(String email, String password) => repository.login(email, password);

}