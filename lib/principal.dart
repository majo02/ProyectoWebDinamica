import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'pantallaBuscar.dart';
import 'pantallaNotificaciones.dart';
import 'pantallaCurriculum.dart';
import 'pantallaPerfil.dart';
class PantallaPrincipal extends StatefulWidget{
  @override 
  PrincipalState createState(){
    return PrincipalState();
  }
}
class PrincipalState extends State<PantallaPrincipal>{
  int _pantalla = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  static List<Widget> _widgetOptions = <Widget>[
    PantallaPerfil(),
    PantallaBuscar(),
    PantallaNotificaciones(),
    PantallaCurriculum(),    
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar:CurvedNavigationBar(
        key: _bottomNavigationKey,
        items: <Widget>[
          Icon(Icons.person, size: 30, color: Colors.white),
          Icon(Icons.search, size: 30, color: Colors.white),
          Icon(Icons.notifications, size: 30, color: Colors.white,),
          Icon(Icons.person_pin, size: 30, color: Colors.white,),
        ],
        onTap: (index) {
          setState(() {
            _pantalla = index;
          });
        },
        backgroundColor: Colors.white,
        animationCurve: Curves.easeOutQuart, // animación
        animationDuration: 
            Duration(milliseconds: 300), //cuanto tarda en hacer la animación
        color: Colors.teal,
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
            child: _widgetOptions.elementAt(_pantalla), // segun esto.. que index muestra
        ),
      ),
    );
  }
}