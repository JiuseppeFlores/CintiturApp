import 'package:cintitur_app/iniciar_sesion.dart';
import 'package:cintitur_app/main.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(
        builder: (context)=>InicioSesion()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          child:Text(
            'Splash Screen',
            style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold ),
          ),
        ),
      ),
    );
  }
}
