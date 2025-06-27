import 'package:flutter/material.dart';


class insta extends StatefulWidget {
  const insta({super.key});

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(headerSliverBuilder:(BuildContext context, bool innerBoxIsScrolled)
        {
          return [SliverAppBar(
            expandedHeight: 400,
            pinned: true,
            floating: false,
           // backgroundColor: Colors.black,
            leading: Icon(Icons.arrow_back,color: Colors.white,),
            flexibleSpace: FlexibleSpaceBar(
              title: Text("SUNNEWS",style: TextStyle(color: Colors.white),),
              background: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage("assets/str.jpg")),
                        ),
                      ),
                      Column(
                        children: [
                          Text("151K",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                          Text("posts",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.normal),)
                        ],

                      ),
                      Column(
                        children: [
                          Text("3.9M",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                          Text("Followers",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 20),)

                        ],
                      ),
                      Column(
                        children: [
                          Text("23",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                          Text("Following",style: TextStyle(color: Colors.black,fontSize: 20 ,fontWeight: FontWeight.normal),)
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("SUN NEWS TAMIL",style: TextStyle(color: Colors.black),)
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("news & media website",style: TextStyle(color: Colors.blue),)
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Text("Welcome to the official instagram of #sunnews "
                                  "24x7 live news satellite TV channels owned and operated by sun TV network ltd"))



                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(),
                              ),
                              child: Center(
                                  child: Text("Following",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.normal),)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text("Message",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.normal),)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(),
                                border: Border.all(),
                              ),
                              child: Icon(Icons.person_add,size: 20,),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.more_vert),),
              Tab(icon: Icon(Icons.video_collection_outlined),),
              Tab(icon: Icon(Icons.person_add),)
            ]),
          ),
          ];

        },



            body:TabBarView(children: [
                Container(color: Colors.red,),
            Container(color: Colors.yellow,),
              Container(color: Colors.cyan,)
                ])

        ),
      )
    );
  }
}
