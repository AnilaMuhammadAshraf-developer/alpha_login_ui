import 'package:alpha_login_ui/screens/login.dart';
import 'package:alpha_login_ui/utils/app_strings.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:AppStrings.appTitle,
      home:LoginScreen()
    );
  }
}