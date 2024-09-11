import 'package:flutter_application_2/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final locator = GetIt.instance;

@InjectableInit()
Future<void> 
  configureDependencies() async => await locator.init();
