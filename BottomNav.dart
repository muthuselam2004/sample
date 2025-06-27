
import 'package:flutter/material.dart';
import 'package:sample/Laptop.dart';
import 'package:sample/access.dart';
import 'package:sample/bmi%20calcus.dart';
import 'package:sample/design.dart';
import 'package:sample/hp.dart';
import 'package:sample/listtile.dart';
import 'package:sample/program.dart';
import 'package:sample/readme.dart';
import 'package:sample/scrren/calsi.dart';
import 'package:sample/scrren/gst.dart';
import 'package:sample/validator.dart';
import 'package:sample/value.dart';




class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int index = 0;

  List page = [

    calcus(),
    gst(),
    bmi(),


  ];

  tap(a)
  {
    setState(() {
      index = a;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard,color: Colors.black,),label: "Home"),
          BottomNavigationBarItem(icon:Icon(Icons.directions,color: Colors.black,),label: "Home"),
        ],
        currentIndex: index,
        onTap: tap,






      ),




    );
  }
}
