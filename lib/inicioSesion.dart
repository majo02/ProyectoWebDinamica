import 'package:flutter/material.dart';
import 'package:prueba/registro.dart';
import 'package:prueba/principal.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext contexto) {
   return MaterialApp(
     title: 'App prueba',
     home: Login()
   );
  }
}

class Login extends StatefulWidget{
  @override 
  LoginState createState(){
    return LoginState();
  }
}
class LoginState extends State<Login>{
  final _formkey= GlobalKey<FormState>();
  var _principal=PantallaPrincipal();
  var _registro= Registro();
  // Esto era para ahorrar código pero no me toma la variable xd -> final _titulos = TextStyle(fontSize: 10.0, color: Color.fromRGBO(235, 192, 52,1));
  @override
  Widget build(BuildContext contexto){
    return Material(
      color: Colors.teal,
      child: ListView(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(80.0),
            child: Image.asset("assets/witi.jpg", width: 100, height: 150),
          ),
                  
          Padding(
            padding: EdgeInsets.fromLTRB(10, 50, 10, 30),
            child: Text(
              'Iniciar sesión.', 
              style: TextStyle(color: Colors.white, fontSize: 30.0), textAlign: TextAlign.center,),
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
                    color: Colors.white,
                  onPressed: (){
                    if(_formkey.currentState.validate()){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => _principal),);
                    }
                  },
                  child: Text('Iniciar', style: TextStyle(color: Colors.teal, fontSize: 25.0,),)
                ),
                ),    
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: RaisedButton(
                    color: Colors.white,
                  onPressed: (){
                     if(_formkey.currentState.validate()){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => _registro),);
                    }
                  },
                  child: Text('Registrarse', style: TextStyle(color: Colors.teal, fontSize: 25.0,),)
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
