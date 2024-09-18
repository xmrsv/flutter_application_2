import 'package:equatable/equatable.dart';
import 'package:shopyfile_v1/src/domain/models/AuthResponse.dart';
import 'package:shopyfile_v1/src/presentation/pages/utils/BlocFormItem.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override 
  List<Object> get props => [];
}

//Clase que inicia el evento del logeo
class InitEvent extends LoginEvent {
  const InitEvent();
}

class LoginSaveUserSession extends LoginEvent {
  final AuthResponse authResponse;
  const LoginSaveUserSession({required this.authResponse});

  @override
  List<Object> get props => [authResponse];
}

class EmailChange extends LoginEvent {
  final BlocFormItem email;

  const EmailChange({required this.email});

  @override
  List<Object> get props => [email];
}

class PasswordChange extends LoginEvent {
  final BlocFormItem password;

  const PasswordChange({required this.password});

  @override
  List<Object> get props => [password];
}

class LoginSubmit extends LoginEvent {
  const LoginSubmit();
}


class LoginFormReset extends LoginEvent {
  const LoginFormReset();
}
