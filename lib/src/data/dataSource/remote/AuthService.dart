import 'dart:convert';
import 'package:flutter_application_2/src/data/api/ApiConfig.dart';
import 'package:flutter_application_2/src/domain/models/AuthResponse.dart';
import 'package:flutter_application_2/src/domain/models/User.dart';
import 'package:flutter_application_2/src/domain/utils/ListToString.dart';
import 'package:flutter_application_2/src/domain/utils/Resource.dart';
import 'package:http/http.dart' as http;


class AuthService {

Future<Resource<AuthResponse>> login(String email, String password) async{
   //192.168.56.1:3000/auth/login
  try {
     Uri url = Uri.http(ApiConfig.API_ECOMMERCE,'/auth/login');
     Map<String, String> heardes = {"Content-Type": "application/json"};
     String body = json.encode({
      'email': email,
      'password': password
     });
   final response = await http.post(url,headers: heardes,body:body);
  final data = json.decode(response.body);
  if(response.statusCode == 200 || response.statusCode == 201){
    AuthResponse authResponse = AuthResponse.fromJson(data);
    return Success(authResponse);
  }else{
    return Error(listToString(data['message']));
  }
    
  } catch (e) {
    print('Error: $e');
    return Error(e.toString());
  }

}

Future<Resource<AuthResponse>> register(User user) async{
   //192.168.56.1:3000/auth/register
  try {
     Uri url = Uri.http(ApiConfig.API_ECOMMERCE,'/auth/register');
     Map<String, String> heardes = {"Content-Type": "application/json"};
     String body = json.encode(user);
   final response = await http.post(url,headers: heardes,body:body);
  final data = json.decode(response.body);
  if(response.statusCode == 200 || response.statusCode == 201){
    AuthResponse authResponse = AuthResponse.fromJson(data);
    return Success(authResponse);
  }else{
    return Error(listToString(data['message']));
  }
    
  } catch (e) {
    print('Error: $e');
    return Error(e.toString());
  }

}



}