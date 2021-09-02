import 'package:flutter/material.dart';
import 'package:sayfa_gecis_app/main.dart';

class SayfaB extends StatefulWidget {
  @override
  _SayfaBState createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sayfa B'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text(
                'Geldigi sayfaya don',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            RaisedButton(
              child: Text(
                'Anasayfaya don',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
            ),
            RaisedButton(
              child: Text(
                'Anasayfaya gecis yap',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Anasayfa()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
