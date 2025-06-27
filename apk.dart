import 'package:flutter/material.dart';
import 'package:sample/lite.dart';
import 'package:sample/program.dart';
import 'package:sample/scrren/flipkart.dart';
import 'package:sample/scrren/page.dart';
import 'package:sample/scrren/spotify.dart';
import 'package:sample/value.dart';



class apk extends StatefulWidget {
  const apk({super.key});

  @override
  State<apk> createState() => _apkState();
}

class _apkState extends State<apk> {


  int index = 0;
  List a = [
    flip(),
    page(),
    spot(),
    lite(),
    program(),

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
      body: a[index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.black,),label: "offers"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note_outlined,color: Colors.black,),label: "spotify"),
          BottomNavigationBarItem(icon: Icon(Icons.video_collection_outlined,color: Colors.black,),label: "instagram"),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),label: "profile"),


        ],
        currentIndex: index,
        onTap: tap,







      ),
    );
  }
}
