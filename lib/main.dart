import 'package:flutter/material.dart';
import 'package:shopyfile_v1/injection.dart';
import 'package:shopyfile_v1/src/presentation/pages/auth/login/LoginContent.dart';
import 'package:shopyfile_v1/src/presentation/pages/auth/login/LoginPage.dart';
import 'package:shopyfile_v1/src/presentation/pages/auth/register/RegisterPage.dart';
import 'package:shopyfile_v1/src/presentation/pages/client/home/ClientHomePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(); //para la inyeccion de dependencia
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'register': (BuildContext context) => RegisterPage(),
        'client/home': (BuildContext context) => ClientHomePage()
      },
    );
  }
}
