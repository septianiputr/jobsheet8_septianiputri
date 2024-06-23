import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Wrap(
            children: [
              Column(
                children: [
                  buatKotak(Colors.greenAccent, 100),
                  Text('Green Accent', style: TextStyle(color: Colors.black)),
                ],
              ),
              Column(
                children: [
                  buatKotak(Colors.orangeAccent[400]!, 70),
                  Text('Orange Accent', style: TextStyle(color: Colors.black)),
                ],
              ),
              Column(
                children: [
                  buatKotak(Colors.greenAccent, 50),
                  Text('Green Accent', style: TextStyle(color: Colors.black)),
                ],
              ),
              Column(
                children: [
                  buatKotak(Colors.orangeAccent[400]!, 90),
                  Text('Orange Accent', style: TextStyle(color: Colors.black)),
                ],
              ),
              Column(
                children: [
                  buatKotak(Colors.red[300]!, 110),
                  Text('Red 300', style: TextStyle(color: Colors.black)),
                ],
              ),
              Column(
                children: [
                  buatKotak(Colors.blue[300]!, 30),
                  Text('Blue 300', style: TextStyle(color: Colors.black)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buatKotak(Color warna, double ukuran) {
    return Container(
      decoration: BoxDecoration(
        color: warna,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 4,
            offset: Offset(6, 10), // Shadow position
          ),
        ],
      ),
      height: ukuran,
      width: ukuran,
      margin: EdgeInsets.all(10),
    );
  }
}
