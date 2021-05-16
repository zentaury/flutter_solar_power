import 'package:flutter/material.dart';

import 'package:solar_power/pages/home_page.dart';
import 'package:solar_power/pages/objects_page.dart';
import 'package:solar_power/pages/results_page.dart';

Map<String, WidgetBuilder> appRoutes() {
  return <String, WidgetBuilder>{
    HomePage.pageName: (_) => HomePage(),
    ObjectsPage.pageName: (_) => ObjectsPage(),
    ResultsPage.pageName: (_) => ResultsPage(),
  };
}
