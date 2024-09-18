import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';
import '../../domain/useCases/auth/AuthUseCases.dart';
import 'auth/login/bloc/LoginBloc.dart';
import 'auth/login/bloc/LoginEvent.dart';

List<BlocProvider> blocProviders = [
  BlocProvider<LoginBloc>(
    create: (context) => LoginBloc(locator<AuthUseCases>())..add(InitEvent()),
  ),
];
