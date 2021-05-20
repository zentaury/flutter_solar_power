import 'package:flutter/material.dart';

import 'package:solar_power/models/electrodomestico_model.dart';

class ElectrodomesticoService with ChangeNotifier {
  Electrodomestico _electrodomestico;

  Electrodomestico get electrodomestico => this._electrodomestico;
  bool get existeElectrodomestico =>
      (this._electrodomestico != null) ? true : false;

  set electrodomestico(Electrodomestico electrodomestico) {
    this._electrodomestico = electrodomestico;
    notifyListeners();
  }

  void electrodomesticoAgregado() {
    this._electrodomestico.activo = true;
  }
}
