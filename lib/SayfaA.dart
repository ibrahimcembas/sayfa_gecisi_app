import 'package:flutter/material.dart';
import 'package:sayfa_gecis_app/Kisiler.dart';

import 'SayfaB.dart';

// ignore: must_be_immutable
class SayfaA extends StatefulWidget {
  Kisiler kisi;

  SayfaA({this.kisi});

  @override
  _SayfaAState createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sayfa A'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text(
                'Sayfa B',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SayfaB()));
                });
              },
            ),
            Text('Isim : ${widget.kisi.isim}',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            Text('Yas : ${widget.kisi.yas}',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            Text('Boy : ${widget.kisi.boy}',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            Text('Bekar Mi : ${widget.kisi.bekarMi}',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
