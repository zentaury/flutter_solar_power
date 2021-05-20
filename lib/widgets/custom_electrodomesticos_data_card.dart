import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class CustomElectrodomesticoDataCard extends StatefulWidget {
  final String imgSVG;
  final String nombre;
  final int watts;
  final int cantidad;
  final int horasDeUso;
  final TextEditingController wattsCtrl;
  final TextEditingController cantidadCtrl;
  final TextEditingController horasDeUsoCtrl;

  CustomElectrodomesticoDataCard(
      {this.imgSVG,
      this.nombre,
      this.watts,
      this.cantidad,
      this.horasDeUso,
      this.wattsCtrl,
      this.cantidadCtrl,
      this.horasDeUsoCtrl});

  @override
  _CustomElectrodomesticoDataCardState createState() =>
      _CustomElectrodomesticoDataCardState();
}

class _CustomElectrodomesticoDataCardState
    extends State<CustomElectrodomesticoDataCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: 240,
        child: Center(
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.transparent,
              child: SvgPicture.asset(
                'assets/foco.svg', //String assets imagen de electrodomestico
                fit: BoxFit.contain,
              ),
            ),
            title: Column(
              children: [
                Center(
                  child: Text(
                    'Foco',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Divider(),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Watts',
                  ),
                  controller: widget.wattsCtrl,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Cantidad',
                  ),
                  controller: widget.cantidadCtrl,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Hora de Uso',
                  ),
                  controller: widget.horasDeUsoCtrl,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
