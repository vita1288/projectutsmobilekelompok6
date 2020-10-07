import 'package:flutter/material.dart';
import 'halaman_aspnet.dart';
import 'halaman_kotlin.dart';
import 'halaman_python.dart';
import 'halaman_swift.dart';

class HalamanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Sejarah Bahasa Pemograman',
              style: TextStyle(fontFamily: 'Comfortaa', fontSize: 30.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            CircleAvatar(
              child: Image.asset(
                'assets/img/kisspng-programming-language-computer-programming-java-programming-language-5b4c3efd36b3c1.6458107415317235172241.jpg',
              ),
              radius: 100.0,
              backgroundColor: Color.fromRGBO(0, 0, 0, 0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment : CrossAxisAlignment.center,
              children: [
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return HalamanKotlin();
                          }));
                    },
                    child: ListTile(
                      leading: Image.asset(
                        'assets/img/kotlin.jpg',
                        height: 50.0,
                        width: 50.0,
                        scale: 20.0,
                      ),
                      title: Text('Kotlin'),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return HalamanPython();
                          }));
                    },
                    child: ListTile(
                      leading: Image.asset(
                        'assets/img/python.jpg',
                        height: 50.0,
                        width: 50.0,
                      ),
                      title: Text('Python'),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return HalamanSwift();
                          }));
                    },
                    child: ListTile(
                      leading: Image.asset(
                        'assets/img/swift.png',
                        height: 50.0,
                        width: 50.0,
                      ),
                      title: Text('Swift'),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return HalamanASPNET();
                          }));
                    },
                    child: ListTile(
                      leading: Image.asset(
                        'assets/img/logo.asp.jpeg',
                        height: 50.0,
                        width: 50.0,
                      ),
                      title: Text('ASP.NET'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}