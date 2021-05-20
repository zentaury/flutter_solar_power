import 'package:flutter/material.dart';

class CustomDataResultCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final TextEditingController resultCtrl;
  final String suffix;

  const CustomDataResultCard({
    this.icon,
    this.title,
    this.resultCtrl,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(15),
        elevation: 10,
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                this.icon, //IconData var
                size: 30,
              ),
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text(
                this.title, //String var
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: TextField(
                style: TextStyle(fontSize: 25),
                controller: this.resultCtrl, //resultControler
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  suffixText: this.suffix,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
