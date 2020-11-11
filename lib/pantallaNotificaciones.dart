import 'package:flutter/material.dart';

class PantallaNotificaciones extends StatefulWidget {
  PantallaNotificaciones({
    Key key,
  }) : super(key: key);
  _PantallaNotificacionesState createState() => _PantallaNotificacionesState();
}

class _PantallaNotificacionesState extends State<PantallaNotificaciones> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text('PROXIMAMENTE xd')));
  }
}