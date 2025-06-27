import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/listtile.dart';
import 'package:sample/value.dart';

import 'model.dart';



class flip extends StatefulWidget {
  const flip({super.key});

  @override
  State<flip> createState() => _flipState();
}

class _flipState extends State<flip> {

  bool isSwitched = false;
  void _toggleSwitch(bool value)
  {
    setState(() {
  isSwitched = value;
    });
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 280,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search,color: Colors.black,),
                          hintText: "Search",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    )
                  ],
                )


              ],
            ),


          ],
        ),
      ),


      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.yellowAccent,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 16/9,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),

                itemCount: 10,
                itemBuilder: (BuildContext a, int b, int c) {
                  return Container(

                   height: 400,
                    width: 450,
                   decoration: BoxDecoration(
                    // border: Border.all(),
                     borderRadius: BorderRadius.circular(30),
                     image: DecorationImage(
                         image: AssetImage("assets/phone.jpg"),
                          fit: BoxFit.cover,

                     ),
                   ),

                  );
                },


              ),
              Container(
                height: 110,
                //color: Colors.red,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: lisd.length,
                  itemBuilder: (BuildContext c,index)
                  {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(lisd[index].image),
                                fit: BoxFit.fill,
                              ),
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Text(lisd[index].text),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 480,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:
                  Column(
                    children: [
                      Text("Top Selection"),
                      Container(
                        height: 450,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: GridView.builder(
                            shrinkWrap:true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 2,
                            childAspectRatio: 0.65),
                            itemCount: a.length,
                            itemBuilder:(BuildContext context,int index){
                              return Column(
                                children: [
                                  //Text(data)
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height:185,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          border: Border.all(),
                                          image: DecorationImage(
                                            image: AssetImage(a[index].image),
                                            fit: BoxFit.fill,
                                          )
                                      ),
                                    ),
                                  ),
                                  Text(a[index].text),
                                ],
                              );
                            }),

                      ),
                    ],
                  ),




                ),
              ),
              Column(
                children: [
                  Container(
                    height: 110,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: a.length,
                      itemBuilder: (BuildContext c,index)
                      {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(b[index].image),
                                    fit: BoxFit.fill,
                                  ),
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            Text(a[index].text),
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 480,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:
                  Column(
                    children: [
                      Text("Top Selection"),
                      Container(
                        height: 450,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: GridView.builder(
                            shrinkWrap:true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 2,
                                childAspectRatio: 0.65),
                            itemCount: a.length,
                            itemBuilder:(BuildContext context,int index){
                              return Column(
                                children: [
                                  //Text(data)
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height:185,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          border: Border.all(),
                                          image: DecorationImage(
                                            image: AssetImage(a[index].image),
                                            fit: BoxFit.fill,
                                          )
                                      ),
                                    ),
                                  ),
                                  Text(a[index].text),
                                ],
                              );
                            }),

                      ),
                    ],
                  ),




                ),
              ),




            ],
          ),
        ),
      ),


    );
  }
}



