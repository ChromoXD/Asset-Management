import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'filterBar.dart';

List<int> Memebers = [];

class tableBody extends StatefulWidget {
  const tableBody({super.key});

  @override
  State<tableBody> createState() => _tableBodyState();
}

class _tableBodyState extends State<tableBody> {
  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.of(context).size.height;
    double containerWidth = MediaQuery.of(context).size.width;

    return (Container(
      width: Platform.isWindows ? containerWidth * 0.9 : containerWidth * 0.85,
      height: Platform.isWindows
          ? containerHeight * 0.66
          : containerHeight * 0.7,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 122, 178, 178),
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.25),
            blurRadius: 4,
            spreadRadius: 0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      margin: EdgeInsets.only(top: containerHeight * 0.02),

      child: Column(
        children: [
          ...Memebers.map((e) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              height: 50,
              width: 100,
              color: Colors.blue,
            );
          }),
        ],
      ),
    ));
  }
}

class addButton extends StatefulWidget {
  const addButton({super.key});

  @override
  State<addButton> createState() => _addButtonState();
}

class _addButtonState extends State<addButton> {

  void AddContainer() {
    setState(() {
      Memebers.add(1);
    });
  }

  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.of(context).size.height;
    double containerWidth = MediaQuery.of(context).size.width;

    return (Container(
      width: Platform.isWindows
          ? containerWidth * 0.15546875
          : containerWidth * 0.4,
      height: Platform.isWindows
          ? containerHeight * 0.0763888889
          : containerHeight * 0.05,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 235, 244, 246),
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      margin: EdgeInsets.only(top: Platform.isWindows ? 0 : 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(0),
          elevation: 2,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Image.asset("Plus_symbol.png"),
            Text("+ Click to add"),
          ],
        ),
        onPressed: () => AddContainer(),
      ),
    ));
  }
}

class MainConatiner extends StatefulWidget{
  const MainConatiner({super.key});



  @override
  State<StatefulWidget> createState() => stateMainConatiner();
}

class stateMainConatiner extends State<MainConatiner>{
  
  @override
  Widget build(BuildContext context) {
  double pageWidth = MediaQuery.of(context).size.width;
  
    // TODO: implement build
    return(
      Column(
       children: [Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: pageWidth * 0.012),
                  child: filterButton(),
                ),
                Container(
                  margin: EdgeInsets.only(top: pageWidth * 0.012),
                  child: addButton()
                ),
                Container(
                  margin: EdgeInsets.only(right: pageWidth * 0.012),
                  child: settingButton(),
                )
              ],
            ),
            tableBody()
          ]
      )
    );
  }
}