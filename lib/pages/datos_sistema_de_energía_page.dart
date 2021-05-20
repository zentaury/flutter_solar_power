import 'package:flutter/material.dart';

import 'package:solar_power/widgets/custom_data_results_card.dart';

class DatosSistemaEnergiaPage extends StatelessWidget {
  static final pageName = '/results';

  TextEditingController wattagePanelCtrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datos del Sistema de Paneles Solar'),
      ),
      body: Container(
        child: ListView(
          children: [
            CustomDataResultCard(
              title: 'Wattage de Panel Solar',
              icon: Icons.bolt,
              suffix: 'Watts',
              resultCtrl: wattagePanelCtrl,
            ),
            CustomDataResultCard(
              title: 'Horas de Sol',
              icon: Icons.timer,
              suffix: 'Horas',
              resultCtrl: wattagePanelCtrl,
            ),
            CustomDataResultCard(
              title: 'Capacidad de Bateria',
              icon: Icons.battery_charging_full,
              suffix: 'AH',
              resultCtrl: wattagePanelCtrl,
            ),
            CustomDataResultCard(
              title: 'Voltage del Banco de Batería',
              icon: Icons.battery_alert,
              suffix: 'V',
              resultCtrl: wattagePanelCtrl,
            ),
          ],
        ),
      ),
    );
  }
}
