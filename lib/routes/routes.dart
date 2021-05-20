import 'package:flutter/material.dart';
import 'package:solar_power/pages/electrodomesticos_page.dart';

import 'package:solar_power/pages/home_page.dart';
import 'package:solar_power/pages/datos_electrodomesticos_page.dart';
import 'package:solar_power/pages/datos_sistema_de_energ%C3%ADa_page.dart';

Map<String, WidgetBuilder> appRoutes() {
  return <String, WidgetBuilder>{
    Routes.electrodomesticos: (_) => ElectrodomesticosPage(),
    Routes.home: (_) => HomePage(),
    Routes.datosElectrodomesticos: (_) => DatosElectrodomesticosPage(),
    Routes.sistemaEnergia: (_) => DatosSistemaEnergiaPage(),
  };
}

class Routes {
  static final electrodomesticos = ElectrodomesticosPage.pageName;
  static final home = HomePage.pageName;
  static final sistemaEnergia = DatosSistemaEnergiaPage.pageName;
  static final datosElectrodomesticos = DatosElectrodomesticosPage.pageName;
}
