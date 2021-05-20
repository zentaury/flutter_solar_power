import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class CustomElectrodomesticoCard extends StatefulWidget {
  final String imgSVG;
  final String nombre;
  final int watts;
  final Function onPressed;

  const CustomElectrodomesticoCard({
    this.nombre,
    this.imgSVG,
    this.watts,
    this.onPressed,
  });

  @override
  _CustomElectrodomesticoCardState createState() =>
      _CustomElectrodomesticoCardState();
}

class _CustomElectrodomesticoCardState
    extends State<CustomElectrodomesticoCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: 100,
        child: Center(
          child: ListTile(
              leading: CircleAvatar(
                radius: 25.0,
                backgroundColor: Colors.transparent,
                child: SvgPicture.asset(
                  widget.imgSVG, //String assets imagen de electrodomestico
                  fit: BoxFit.contain,
                ),
              ),
              title: Text(
                widget.nombre, //String nombre del electrodomestico
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                  'Prom. de Watts: ${widget.watts}'), //Watts del electrodomestico
              trailing: TextButton(
                child: Text(
                  'Agregar',
                  style: TextStyle(color: Colors.grey),
                ),
                onPressed: widget.onPressed,
              )),
        ),
      ),
    );
  }
}
