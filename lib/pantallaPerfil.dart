import 'package:flutter/material.dart';

class PantallaPerfil extends StatefulWidget {
  PantallaPerfil({
    Key key,
  }) : super(key: key);
  _PantallaPerfilState createState() => _PantallaPerfilState();
}

class _PantallaPerfilState extends State<PantallaPerfil> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text('PROXIMAMENTE perfil xd')));
  }
}