import 'package:flutter/material.dart';
import 'package:solar_power/routes/routes.dart';

import 'package:solar_power/widgets/custom_electrodomestico_card.dart';

class ElectrodomesticosPage extends StatelessWidget {
  static final pageName = '/electrodomesticos';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _CustomFloatingActionButton(),
      backgroundColor: Colors.green[400],
      appBar: AppBar(
        leading: Icon(
          Icons.wb_sunny,
          color: Colors.white,
        ),
        title: Text(
          'Solar Power',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            CustomElectrodomesticoCard(
              nombre: 'Foco',
              imgSVG: 'assets/foco.svg',
              watts: 20,
              onPressed: _agregarDatos,
            ),
          ],
        ),
      ),
    );
  }

  _agregarDatos() {
    print('Agregar presionado');
  }
}

class _CustomFloatingActionButton extends StatelessWidget {
  const _CustomFloatingActionButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: Colors.white,
      icon: Icon(
        Icons.app_registration,
        color: Colors.green,
      ),
      label: Text(
        'Ver Datos',
        style: TextStyle(color: Colors.green),
      ),
      onPressed: () =>
          Navigator.pushNamed(context, Routes.datosElectrodomesticos),
    );
  }
}
