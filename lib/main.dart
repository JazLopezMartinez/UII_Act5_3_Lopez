import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mostrar Imagenes',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mostrar Imagenes"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 250.0,
                  width: 450.0,
                  child: Image.asset(
                    "assets/buho.jpg",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  height: 250.0,
                  width: 450.0,
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2016/10/31/14/55/rottweiler-1785760__340.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
