import 'package:flutter/material.dart';
import 'package:projectutsmobilekelompok6/halaman_aspnet.dart';
import 'package:projectutsmobilekelompok6/halaman_swift.dart';
import 'halaman_python.dart';
import 'package:flutter/material.dart';

class HalamanKotlin extends StatefulWidget {
  @override
  _HalamanKotlinState createState() => _HalamanKotlinState();
}

class _HalamanKotlinState extends State<HalamanKotlin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Kotlin'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment : CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Image.asset(
                'assets/img/kot_lin.jpeg',
              ),
              radius: 100.0,
              backgroundColor: Color.fromRGBO(0, 0, 0, 0),
            ),
            Text('Kotlin pertama kali muncul pada tahun 2011, tepatnya pada bulan Juli. Bahasa ini telah dikembangkan selama satu tahun dipimpin oleh Dmitry Jemerov, penerbit buku “Kotlin in Action” bersama dengan Svetlana Isakova. Dmitry sendiri mengatakan bahwa sebagian besar bahasa tidak memiliki fitur yang mereka cari, dengan pengecualian Scala. Namun, ia menyebutkan waktu kompilasi lambat Scala sebagai kekurangan yang jelas. Salah satu tujuan dari Kotlin adalah untuk mengkompilasi secepat Java. Pada Februari 2012, JetBrains membuka proyek bersumber di bawah lisensi Apache 2. Nama kotlin berasal dari pulau Kotlin di dekat St. Petersburg.'),
            SizedBox(
              width:100,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HalamanASPNET();
                  }));
                },
                child: Text('Halaman ASP.NET'), color: Colors.blue,
              ),
            ),
            SizedBox(
              width:100,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'), color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
