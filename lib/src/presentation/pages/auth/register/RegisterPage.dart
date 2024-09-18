import 'package:flutter/material.dart';
import 'package:shopyfile_v1/src/presentation/widget/DefaultIconBack.dart';
import 'package:shopyfile_v1/src/presentation/widget/DefaultTextField.dart';
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       //color: Colors.amber,
       child: Stack(
        alignment: Alignment.center,
        children: [
         Image.asset(
          'assets/img/background2.jpg',
          width: MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
          color: Colors.black54,
          colorBlendMode: BlendMode.darken,
         ),
         Container(
          width: MediaQuery.of(context).size.width * 0.85,
          height:MediaQuery.of(context).size.height * 0.75,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.3),
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          child:SingleChildScrollView(
            child: Column(
            children: [
              Icon(
               Icons.person,
               color:Colors.white,
               size:125,
              ),
              Text(
               'REGISTER',
               style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
               ), 
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                child: DefaultTextField(
                  label: 'Nombre',
                   icon: Icons.person, 
                   onChanged: (text){
                    print('Text:${text}');
                   }),
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                child:DefaultTextField(
                  label: 'Email',
                   icon: Icons.email, 
                   onChanged: (text){
                    print('Text:${text}');
                   }), 
              ),
               Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                child: DefaultTextField(
                  label: 'Telefono',
                   icon: Icons.phone, 
                   onChanged: (text){
                    print('Text:${text}');
                   }),
              ),
               Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                child: DefaultTextField(
                  label: 'Contraseña',
                   icon: Icons.lock, 
                   onChanged: (text){
                    print('Text:${text}');
                   },
                   obscureText: true),
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                child: DefaultTextField(
                  label: 'Confirmar Contraseña',
                   icon: Icons.lock_outlined, 
                   onChanged: (text){
                    print('Text:${text}');
                   },
                   obscureText: true),
              ),
              Container(
                 width: MediaQuery.of(context).size.width,
                 margin: EdgeInsets.only(left: 25, right: 25,top:25, bottom: 15),
               child: ElevatedButton(
                onPressed:(){
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child:Text(
                    'Register', style: TextStyle(color: Colors.white),
                  )
                )
              )
              
            ],

            )
          )
          
         ),
         DefaultIconBack(left: 40, top: 120)
        ],
       ),
      ),
    );
  }
}