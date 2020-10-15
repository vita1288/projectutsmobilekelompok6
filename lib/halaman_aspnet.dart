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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width:100,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return HalamanSwift();
                    }));
                  },
                  child: Text('Halaman Swift', style: TextStyle(
                      fontSize: 11.0, fontWeight: FontWeight.w700),textAlign: TextAlign.center), color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width:100,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return HalamanKotlin();
                    }));
                  },
                  child: Text('Halaman Kotlin', style: TextStyle(
                      fontSize: 11.0, fontWeight: FontWeight.w700),textAlign: TextAlign.center), color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width:100,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back', style: TextStyle(
                      fontSize: 11.0, fontWeight: FontWeight.w700),textAlign: TextAlign.center), color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
