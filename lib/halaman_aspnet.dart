import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectutsmobilekelompok6/halaman_kotlin.dart';
import 'package:projectutsmobilekelompok6/halaman_swift.dart';
import 'package:flutter/material.dart';


class HalamanASPNET extends StatefulWidget {
  @override
  _HalamanASPNETState createState() => _HalamanASPNETState();
}

class _HalamanASPNETState extends State<HalamanASPNET> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Halaman ASP.NET'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment : CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Image.asset(
                'assets/img/ASP.png',
              ),
              radius: 100.0,
              backgroundColor: Color.fromRGBO(0, 0, 0, 0),
            ),
            Text('ASP.Net adalah kumpulan teknologi dalam Framework .Net untuk membantu pengembangan aplikasi web yang menggunakan Object — Oriented secara dinamis, teknologi yang diciptakan oleh Microsoft untuk pemograman Internet yang lebih efisien'),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HalamanSwift();
                }));
              },
              child: Text('Ke Halaman Swift'), color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HalamanKotlin();
                }));
              },
              child: Text('Ke Halaman Kotlin'), color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'), color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
