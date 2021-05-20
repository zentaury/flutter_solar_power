import 'package:flutter/material.dart';
import 'package:solar_power/routes/routes.dart';
import 'package:solar_power/widgets/custom_electrodomesticos_data_card.dart';

class DatosElectrodomesticosPage extends StatelessWidget {
  static final pageName = '/datos';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _CustomFloatingActionButton(),
      appBar: AppBar(
        title: Text(
          'Datos de Electrodomésticos',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            CustomElectrodomesticoDataCard(),
          ],
        ),
      ),
    );
  }
}

class _CustomFloatingActionButton extends StatelessWidget {
  const _CustomFloatingActionButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: Colors.green,
      icon: Icon(Icons.calculate),
      label: Text('Sistema de Energía'),
      onPressed: () => Navigator.pushNamed(context, Routes.sistemaEnergia),
    );
  }
}
