import 'package:flutter/material.dart';

class filterButton extends StatefulWidget {
  const filterButton({super.key});

  @override
  State<filterButton> createState() => _filterButtonState();
}

class _filterButtonState extends State<filterButton> {

  
  static const IconData filter_alt_outlined = IconData(
    0xf068,
    fontFamily: 'MaterialIcons',
  );

    @override
  Widget build(BuildContext context) {
    return (
      ElevatedButton(
        onPressed: () => WhenButtonPressed(),
        style: ElevatedButton.styleFrom(
          elevation: 1.5,
          backgroundColor: Color.fromARGB(255, 9, 99, 126),
          iconColor: Color.fromARGB(255, 209, 239, 234),
          minimumSize: Size(34, 34),
          fixedSize: Size(34, 34),
          padding: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
          )
        ),
        child:const Icon(filter_alt_outlined),
        )

      // child: IconButton(
      //   icon: const Icon(settings),
      //   padding: EdgeInsets.zero,
      //   constraints: const BoxConstraints(),
      //   color: Color.fromARGB(255, 209, 239, 234),
      //   onPressed: () => WhenButtonPressed(),
      // ),
      );
  }
}

class settingButton extends StatefulWidget {
  const settingButton({super.key});

  @override
  State<settingButton> createState() => _settingButtonState();
}

class _settingButtonState extends State<settingButton> {
  static const IconData settings = IconData(0xe57f, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return (
      ElevatedButton(
        onPressed: () => WhenButtonPressed(),
        style: ElevatedButton.styleFrom(
          elevation: 1.5,
          backgroundColor: Color.fromARGB(255, 9, 99, 126),
          iconColor: Color.fromARGB(255, 209, 239, 234),
          minimumSize: Size(34, 34),
          fixedSize: Size(34, 34),
          padding: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
          ),
        ),
        child:const Icon(settings),
        )

      // child: IconButton(
      //   icon: const Icon(settings),
      //   padding: EdgeInsets.zero,
      //   constraints: const BoxConstraints(),
      //   color: Color.fromARGB(255, 209, 239, 234),
      //   onPressed: () => WhenButtonPressed(),
      // ),
      );
  }
}

void WhenButtonPressed() {
  print("Hello");
}
