import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:solar_power/models/checkbox_list_model.dart';
import 'package:solar_power/pages/objects_page.dart';
import 'package:solar_power/styles/my_icons.dart';

class HomePage extends StatefulWidget {
  static final pageName = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color backgroundColor = Color(0xff00BF50);

  List<CheckBoxListTileModel> checkboxListTileModel =
      CheckBoxListTileModel.getCheckboxCards();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          isExtended: true,
          backgroundColor: Colors.white,
          icon: Icon(
            Icons.app_registration,
            color: Colors.green,
          ),
          label: Text(
            'Ver Consumos',
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            Navigator.pushNamed(context, ObjectsPage.pageName);
          }),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            _SliverAppBar(),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    height: 100,
                    child: Center(
                      child: CheckboxListTile(
                        activeColor: Colors.green,
                        checkColor: Colors.white,
                        title: Text(
                          checkboxListTileModel[index].title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text('Prom. de Watts: 20'),
                        value: checkboxListTileModel[index].isCheck,
                        secondary: CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Colors.transparent,
                          child: SvgPicture.asset(
                            checkboxListTileModel[index].img,
                            fit: BoxFit.contain,
                          ),
                        ),
                        onChanged: (value) {
                          itemChange(value, index);
                        },
                      ),
                    ),
                  ),
                );
              }, childCount: checkboxListTileModel.length),
            ),
          ],
        ),
      ),
    );
  }

  void itemChange(bool val, int index) {
    setState(() {
      checkboxListTileModel[index].isCheck = val;
    });
  }
}

/* class CustomCheckboxListTile extends StatefulWidget {
  const CustomCheckboxListTile(
      {Key key,
      @required this.isChecked,
      @required this.title,
      @required this.img,
      @required this.onChage})
      : super(key: key);

  final bool isChecked;
  final String title;
  final String img;
  final Function onChage;

  @override
  _CustomCheckboxListTileState createState() => _CustomCheckboxListTileState();
}

class _CustomCheckboxListTileState extends State<CustomCheckboxListTile> {
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
            child: CheckboxListTile(
              activeColor: Colors.green,
              checkColor: Colors.white,
              value: this.widget.isChecked,
              secondary: CircleAvatar(
                radius: 25.0,
                backgroundColor: Colors.transparent,
                child: SvgPicture.asset(
                  this.widget.img,
                  fit: BoxFit.contain,
                ),
              ),
              title: Text(
                this.widget.title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Prom. de Watts: 20'),
              onChanged: this.widget.onChage,
            ),
          ),
        ));
  }
} */

class _SliverAppBar extends StatelessWidget {
  const _SliverAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      expandedHeight: 200,
      leading: Icon(
        Icons.wb_sunny,
        color: Colors.white,
      ),
      title: Text(
        'Solar Power',
        style: TextStyle(color: Colors.white),
      ),
      flexibleSpace: Container(
        child: SvgPicture.asset(
          sliverHomeImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
