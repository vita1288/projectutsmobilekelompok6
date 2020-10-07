import 'package:flutter/material.dart';
import 'package:projectutsmobilekelompok6/halaman_kotlin.dart';
import 'package:projectutsmobilekelompok6/halaman_swift.dart';
import 'package:flutter/material.dart';

class HalamanPython extends StatefulWidget {
  @override
  _HalamanPythonState createState() => _HalamanPythonState();
}

class _HalamanPythonState extends State<HalamanPython> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Halaman Python'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment : CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Image.asset(
                'assets/img/python-logo.png',
              ),
              radius: 100.0,
              backgroundColor: Color.fromRGBO(0, 0, 0, 0),
            ),
            Text('Python diciptakan oleh Guido van Rossum pertama kali di  Centrum Wiskunde & Informatica (CWI) di Belanda pada awal tahun 1990-an. Bahasa python terinspirasi dari bahasa pemrograman ABC. Sampai sekarang, Guido masih menjadi penulis utama untuk python, meskipun bersifat open source sehingga ribuan orang juga berkontribusi dalam mengembangkannya.'),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HalamanKotlin();
                }));
              },
              child: Text('Ke Halaman Kotlin'), color: Colors.lightBlue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HalamanSwift();
                }));
              },
              child: Text('Ke Halaman Swift'), color: Colors.lightBlue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'), color: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }
}