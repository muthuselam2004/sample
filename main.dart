import 'package:flutter/material.dart';
import 'package:sample/BottomNav.dart';
import 'package:sample/Laptop.dart';
import 'package:sample/bmi%20calcus.dart';
import 'package:sample/design.dart';
import 'package:sample/hp.dart';
import 'package:sample/instagram.dart';

import 'package:sample/listtile.dart';
import 'package:sample/lite.dart';
import 'package:sample/program.dart';
import 'package:sample/readme.dart';
import 'package:sample/scrren/calls.dart';
import 'package:sample/scrren/calsi.dart';
import 'package:sample/scrren/chat.dart';
import 'package:sample/scrren/contact.dart';
import 'package:sample/scrren/file.dart';
import 'package:sample/scrren/flipkart.dart';
import 'package:sample/scrren/gst.dart';
import 'package:sample/scrren/index.dart';
import 'package:sample/scrren/legside.dart';
import 'package:sample/scrren/list.dart';
import 'package:sample/scrren/mob.dart';
import 'package:sample/scrren/page.dart';
import 'package:sample/scrren/spotify.dart';
import 'package:sample/scrren/value.dart';
import 'package:sample/scrren/various.dart';
import 'package:sample/validator.dart';
import 'package:sample/value.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:spot(),
    );
  }
}

