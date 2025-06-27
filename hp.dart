import 'dart:ui';

import 'package:flutter/material.dart';


class hp extends StatelessWidget {
  const hp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(),
          image: DecorationImage(
            image: AssetImage("chip.jpeg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            children: [
                 Container(
                    height: 500,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.only(),
                      image: DecorationImage(
                        image: AssetImage("L.jpg"),
                        fit: BoxFit.fill,

                      ),
                    ),
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "ENTER THE NAME",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "ENTER PASSWORD",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(onPressed: (){}, child: Text("LOGIN")),
                            ),
                      
                      
                      
                      
                      
                      
                          ],
                        ),
                      ),
                    ),
                  ),



            ],
          ),
        )
      ),
    );
  }
}



class qqqqq extends StatelessWidget {
  const qqqqq({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/L.jpg"),
              fit: BoxFit.fill
              ),
              
            ),
            child: ClipRRect(
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20,sigmaY: 20),
                  child: Center(child: Text("data"))),
            ),
          )
        ],
      ),
    );
  }
}
