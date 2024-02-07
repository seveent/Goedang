import 'package:flutter/material.dart';
import 'package:login_flutter/page/login_page.dart';
import 'package:login_flutter/page/signup_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Goedang'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian header dengan box decoration yang baru
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90),
                  bottomRight: Radius.circular(90),
                ),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFF7A101), // Ganti dengan warna yang diinginkan
                    Color(0xFFF7A101), // Ganti dengan warna yang diinginkan
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Image.asset("img/goedang_logo.png"),
                      height: 90,
                      width: 90,
                    )
                  ],
                ),
              ),
            ),

          // Bagian Recently Used
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Text(
                  'Recently Used',
                  style: TextStyle(
                    color: Color.fromARGB(255, 247, 161, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // Item Sayur
                    GestureDetector(
                      onTap: () {
                        // Navigasi ke halaman Sayur
                      },
                      child: Container(
                        width: 355,
                        height: 45,
                        margin: EdgeInsets.only(top: 65),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromARGB(255, 247, 161, 1),
                        ),
                        child: Center(
                          child: Text(
                            'Sayur',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),

                    
                  ],
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                // Item Buah
                    GestureDetector(
                      onTap: () {
                        // Navigasi ke halaman Buah
                      },
                      child: Container(
                        width: 1245,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromARGB(255, 247, 161, 1),
                        ),
                        child: Center(
                          child: Text(
                            'Buah',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
              ]
            )
          ),

          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                GestureDetector(
                      onTap: () {
                        // Navigasi ke halaman Buah
                      },
                      child: Container(
                        width: 50,
                        height: 45,
                        margin: EdgeInsets.only(left: 310,top: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 247, 161, 1),
                        ),
                        child: Center(
                          child: Text(
                            '+',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
              ]
              )
          ),

          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                GestureDetector(
                      onTap: () {
                        // Navigasi ke halaman Sayur
                      },
                      child: Container(
                        width: 175,
                        height: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromARGB(255, 247, 161, 1),
                        ),
                        child: Center(
                          child: Text(
                            'Home',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Item Buah
                    GestureDetector(
                      onTap: () {
                        // Navigasi ke halaman Buah
                      },
                      child: Container(
                        width: 175,
                        height: 65,
                        margin: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromARGB(255, 247, 161, 1),
                        ),
                        child: Center(
                          child: Text(
                            'Profile',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
              ]
            )
          )
        ],
      ),
      )
    );
  }
}