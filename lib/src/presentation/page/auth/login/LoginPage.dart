import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/presentation/widget/DefaultTextField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/img/background2.jpg",

            // Ajustar imagen a pantalla
            width: // Ancho completo de la pantalla
                MediaQuery.of(context).size.width,
            height: // Alto de la pantalla
                MediaQuery.of(context).size.height,
            fit: BoxFit.cover,

            // Opacar imagen
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
          ),

          /**
           * 
           * CONTENEDOR PRINCIPAL
           * 
           */

          Container(
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.4),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Column(children: [
                const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 125,
                ),
                const Text(
                  "Iniciar sesión",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),

                /**
                 * 
                 * INPUT USUARIO
                 * 
                 */

                Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    child: DefaultTextField(
                        label: "Email",
                        icon: Icons.people,
                        onChange: (text) {
                          print("Texto: ${text}");
                        })),

                /**
                 * 
                 * INPUT CONTRASEÑA
                 * 
                 */

                Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    child: DefaultTextField(
                      label: "Contraseña",
                      icon: Icons.lock,
                      onChange: (text) {
                        print("Text: ${text}");
                      },
                      obscureText: true,
                    )),

                /**
                 * 
                 * Botón Register
                 * 
                 */
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                        left: 25, right: 25, top: 25, bottom: 15),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "client/home");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: Text("Iniciar sesión",
                          style: TextStyle(color: Colors.white)),
                    )),

                /**
                 * 
                 * Botón Register
                 * 
                 */
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                        left: 25, right: 25, top: 25, bottom: 15),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'register');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      child: Text("Register",
                          style: TextStyle(color: Colors.white)),
                    ))
              ])),
        ],
      ),
    );
  }
}
