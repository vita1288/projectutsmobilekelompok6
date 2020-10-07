import 'package:flutter/material.dart';
import 'package:projectutsmobilekelompok6/halaman_kotlin.dart';
import 'package:projectutsmobilekelompok6/halaman_python.dart';
import 'package:flutter/material.dart';


class HalamanSwift extends StatefulWidget {
  @override
  _HalamanSwiftState createState() => _HalamanSwiftState();
}

class _HalamanSwiftState extends State<HalamanSwift> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Halaman Swift'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment : CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Image.asset(
                'assets/img/logo-swift.jpeg',
              ),
              radius: 100.0,
              backgroundColor: Color.fromRGBO(0, 0, 0, 0),
            ),
            Text('Swift adalah bahasa pemrograman objek fungsional untuk pengembangan iOS dan OS X yang dibuat oleh Apple. Didesain untuk berdampingan dengan Objective-C dan menghindari program dari kode yang salah. Swift diperkenalkan oleh Apple pada acara tahunan WWDC 2014.Ini dibangun dengan compiler LLVM yang termasuk dalam Xcode 6 beta. Sebuah buku berisi 500 halaman petunjuk, The Swift Programming Language, dirilis bersamaan dengan WWDC, dan tersedia secara gratis di iBooks'),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HalamanPython();
                }));
              },
              child: Text('Ke Halaman Python'), color: Colors.orange,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HalamanKotlin();
                }));
              },
              child: Text('Ke Halaman Kotlin'), color: Colors.orange,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'), color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
