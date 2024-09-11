import 'package:flutter/material.dart';
import 'package:flutter_application_2/injection.dart';
import 'package:flutter_application_2/src/presentation/page/auth/login/LoginPage.dart';
import 'package:flutter_application_2/src/presentation/page/auth/register/RegisterPage.dart';
import 'package:flutter_application_2/src/presentation/page/client/home/ClientHomePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'login',
      routes: {
        "login": (BuildContext context) => const LoginPage(),
        "register": (BuildContext context) => const RegisterPage(),
        "client/home": (BuildContext context) => const ClientHomePage(),
      },
    );
  }
}
