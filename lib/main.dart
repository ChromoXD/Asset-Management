 import 'dart:ffi';

import 'package:flutter/material.dart';
// import 'navBar.dart';
import 'tableBody.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Asset Manager',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 209, 239, 234),
        ),

      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    double pageHeight = MediaQuery.of(context).size.height;
    double pageWidth = MediaQuery.of(context).size.width;

    return (Scaffold(
      body: Center(
        child: Container(
          color: Color.fromRGBO(248, 250, 252, 1),
          child: Column(
            children: [
              Container(
                width: pageWidth * 0.9,
                height: pageHeight * 0.07,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 9, 99, 126),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                margin: EdgeInsets.only(top: pageHeight * 0.05),
              ),

              Container(
                width: pageWidth * 0.93828125,
                height: pageHeight * 0.811111111,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 8, 131, 149),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                margin: EdgeInsets.only(top: pageHeight * 0.02),

                  child: MainConatiner(),
                ),
            ],
          ),
        ),
      ),
    ));
  }
}


/*

        

*/