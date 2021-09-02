import 'package:flutter/material.dart';
import 'package:sayfa_gecis_app/Kisiler.dart';
import 'package:sayfa_gecis_app/SayfaA.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('X Ofis'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/xofis.jpg'),
            RaisedButton(
              child: Text(
                'X Ofis',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              onPressed: () {
                var kisi =
                    Kisiler(isim: 'Cem', yas: 26, boy: 191, bekarMi: true);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SayfaA(
                              kisi: kisi,
                            )));
              },
            )
          ],
        ),
      ),
    );
  }
}
