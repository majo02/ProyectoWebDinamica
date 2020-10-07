import 'package:flutter/material.dart';

class PantallaPrincipal extends StatefulWidget{
  @override 
  PrincipalState createState(){
    return PrincipalState();
  }
}
class PrincipalState extends State<PantallaPrincipal>{

  @override
  Widget build(BuildContext contexto){
    return Scaffold(
      body: Center(child: Text('Proximamente xd', textAlign: TextAlign.center,))
    );
  }
}