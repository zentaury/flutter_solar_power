import 'package:flutter/cupertino.dart';

class CheckBoxListTileModel {
  int objectId;
  String img;
  String title;
  bool isCheck;

  CheckBoxListTileModel(
      {@required this.objectId,
      this.img,
      @required this.title,
      @required this.isCheck});

  static List<CheckBoxListTileModel> getCheckboxCards() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(
        objectId: 1,
        title: "Foco",
        isCheck: false,
        img: 'assets/foco.svg',
      ),
      CheckBoxListTileModel(
        objectId: 2,
        title: "Refrigeradora",
        isCheck: false,
        img: 'assets/refrigerador.svg',
      ),
      CheckBoxListTileModel(
        objectId: 3,
        title: "Lavadora",
        isCheck: false,
        img: 'assets/lavadora.svg',
      ),
      CheckBoxListTileModel(
        objectId: 4,
        title: "Plancha",
        isCheck: false,
        img: 'assets/plancha.svg',
      ),
      CheckBoxListTileModel(
        objectId: 5,
        title: "Televisor",
        isCheck: false,
        img: 'assets/tv.svg',
      ),
      CheckBoxListTileModel(
        objectId: 6,
        title: "Microondas",
        isCheck: false,
        img: 'assets/microondas.svg',
      ),
      CheckBoxListTileModel(
        objectId: 7,
        title: "Computadora",
        isCheck: false,
        img: 'assets/computer.svg',
      ),
    ];
  }
}
