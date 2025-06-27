import 'package:flutter/material.dart';
import 'package:sample/scrren/contact.dart';
import 'package:sample/scrren/list.dart';



class pnk extends StatefulWidget {
  String a;
   pnk({super.key,required this.a});

  @override
  State<pnk> createState() => _indexState();
}

class _indexState extends State<pnk> {


  @override
  Widget build(BuildContext context) {
    return Text(widget.a);
  }
}

