import 'dart:async';

import 'package:flutter/material.dart';
import 'login_page.dart';

void main(){
  
  runApp(SplashPage());
  
}

class SplashPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashPage>{
  
  
  @override
  void initState() {
    super.initState();
    startTime();
  }
  
  startTime() async {
    var duracion = Duration(seconds: 3);
        return new Timer(duracion, route);
    }
    
    route(){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => LoginPage()
    ));
    }

  @override
  Widget build(BuildContext context){
    return initWidget(context);
  }
  
  Widget initWidget(BuildContext context){
    
    return Scaffold(
      body: Stack(
        children: [
          Container(
           decoration: BoxDecoration(
             color: Color.fromARGB(255, 247, 161, 1),
           ),
          ),
          Center(
  child: Container(
    child: Image.asset("img/logo.png", width: 100, height: 100,), // Ukuran disesuaikan
  ),
)
        ],
      ),
    );
  }
  
  
}