import 'package:flutter/material.dart';
import 'package:prueba/principal.dart';

class Registro extends StatefulWidget{
  @override 
  RegistroState createState(){
    return RegistroState();
  }
}
class RegistroState extends State<Registro>{
  final _formkey= GlobalKey<FormState>();
  var _principal=PantallaPrincipal();
  // Esto era para ahorrar código pero no me toma la variable xd -> final _titulos = TextStyle(fontSize: 10.0, color: Color.fromRGBO(235, 192, 52,1));
  @override
  Widget build(BuildContext contexto){
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 50, 10, 30),
            child: Text(
              'Ingrese sus datos', 
              style: TextStyle(color: Colors.black, fontSize: 30.0), textAlign: TextAlign.center,),
            ),
          Form(
            key: _formkey,              
                child: Padding(  
                  padding: EdgeInsets.fromLTRB(40, 0, 50, 0),
                  child: Column(                
                  children: <Widget> [ 
                    TextFormField(
                      validator: (valor){
                        if (valor.isEmpty){
                        return 'Este campo no puede estar vacío.';
                        }
                        return null;
                      },
                      style: TextStyle(color: Colors.white, fontSize: 25.0,),
                      autofocus: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person, color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none
                        ),
                        hintText: 'Correo electrónico',
                        hintStyle: TextStyle(fontSize: 25.0, color: Colors.white),
                      ),
                    ),
                    TextFormField(
                      validator: (valor){
                        if (valor.isEmpty){
                        return 'Este campo no puede estar vacío.';
                        }
                        return null;
                      },
                      autofocus: false,
                      style: TextStyle(color: Colors.white, fontSize: 25.0,),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none
                        ),
                      hintText: 'Contraseña',
                      hintStyle: TextStyle(fontSize: 25.0, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 50, 50, 10),
                  child: RaisedButton(
                    color: Colors.black,
                  onPressed: (){
                    if(_formkey.currentState.validate()){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => _principal),);
                    }
                  },
                  child: Text('Registrarse', style: TextStyle(color: Colors.blue[100], fontSize: 25.0,),)
                ),
                ),                                
              ],
                ),),
          ),
      ],
     ),
    );
  }
}