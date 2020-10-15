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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Python diciptakan oleh Guido van Rossum pertama kali di  Centrum Wiskunde & Informatica (CWI) di Belanda pada awal tahun 1990-an. Bahasa python terinspirasi dari bahasa pemrograman ABC. Sampai sekarang, Guido masih menjadi penulis utama untuk python, meskipun bersifat open source sehingga ribuan orang juga berkontribusi dalam mengembangkannya.'),
            ),
            SizedBox(
              width:100,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HalamanKotlin();
                  }));
                },
                child: Text('Halaman Kotlin', style: TextStyle(
                    fontSize: 11.0, fontWeight: FontWeight.w700),textAlign: TextAlign.center), color: Colors.lightBlue,
              ),
            ),
            SizedBox(
              width:100,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HalamanSwift();
                  }));
                },
                child: Text('Halaman Swift',style: TextStyle(
                    fontSize: 11.0, fontWeight: FontWeight.w700),textAlign: TextAlign.center), color: Colors.lightBlue,
              ),
            ),
            SizedBox(
              width:100,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back', style: TextStyle(
                    fontSize: 11.0, fontWeight: FontWeight.w700),textAlign: TextAlign.center), color: Colors.lightBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
