// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_application_2/src/data/dataSource/remote/AuthService.dart'
    as _i528;
import 'package:flutter_application_2/src/di/AppModule.dart' as _i586;
import 'package:flutter_application_2/src/domain/repository/AuthRepository.dart'
    as _i881;
import 'package:flutter_application_2/src/domain/useCases/auth/AuthUseCases.dart'
    as _i83;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i528.AuthService>(() => appModule.authService);
    gh.factory<_i881.AuthRepository>(() => appModule.authRepository);
    gh.factory<_i83.AuthUseCases>(() => appModule.authUseCases);
    return this;
  }
}

class _$AppModule extends _i586.AppModule {}
