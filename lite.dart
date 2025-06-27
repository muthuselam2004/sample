import 'package:flutter/material.dart';
import 'package:sample/scrren/model.dart';


class lite extends StatefulWidget {
  const lite({super.key});

  @override
  State<lite> createState() => _liteState();
}

class _liteState extends State<lite> {

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
      body: DefaultTabController(
          length: 3,
          child: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
              {
                return [SliverAppBar(
                  expandedHeight: 350,
                  pinned: true,
                  floating: false,
                    backgroundColor: Colors.black,
                    leading: Icon(Icons.arrow_back,color: Colors.white,),
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text("SUNNEWS",style: TextStyle(color: Colors.grey,fontSize: 25,fontWeight: FontWeight.normal),),
                    background:  Column(
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
                                    image: AssetImage("assets/sun.jpg")),
                              ),
                            ),
                            Column(
                              children: [
                                Text("151K",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                Text("posts",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.normal),)
                              ],

                            ),
                            Column(
                              children: [
                                Text("3.9M",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                Text("Followers",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 20),)

                              ],
                            ),
                            Column(
                              children: [
                                Text("23",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                Text("Following",style: TextStyle(color: Colors.white,fontSize: 20 ,fontWeight: FontWeight.normal),)
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text("SUN NEWS TAMIL",style: TextStyle(color: Colors.white),)
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
                                        "24x7 live news satellite TV channels owned and operated by sun TV network ltd",style: TextStyle(color: Colors.white),))



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
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
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
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
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
                                    child: Icon(Icons.person_add,size: 20,color: Colors.white,),
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
                    Tab(icon: Icon(Icons.more_vert,color: Colors.white,),),
                    Tab(icon: Icon(Icons.video_collection_outlined,color: Colors.white,),),
                    Tab(icon: Icon(Icons.person_add,color: Colors.white,),)
                    
                  ]
                  
                  ),
                ),
                ];
              },



              body: TabBarView(
                children: [
                  Container(
                    height: 200,
                    color: Colors.black,
                    child: GridView.builder(
                        shrinkWrap:true,
                        physics: BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 2,
                            childAspectRatio: 0.65),
                        itemCount: lisd.length,
                        itemBuilder:(BuildContext context,int index){
                          return Column(
                            children: [
                              //Text(data)
                              Container(
                                height:180,
                                width: 180,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    image: DecorationImage(
                                      image: AssetImage(lisd[index].image),
                                      fit: BoxFit.fill,
                                    )
                                ),
                              ),

                            ],
                          );
                        }),


                  ),
                  Container(
                    height: 200,
                    color: Colors.black,
                    child: GridView.builder(
                        shrinkWrap:true,
                        physics: BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 2,
                            childAspectRatio: 0.65),
                        itemCount: a.length,
                        itemBuilder:(BuildContext context,int index){
                          return Column(
                            children: [
                              //Text(data)
                              Container(
                                height:180,
                                width: 180,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    image: DecorationImage(
                                      image: AssetImage(a[index].image),
                                      fit: BoxFit.fill,
                                    )
                                ),
                              ),

                            ],
                          );
                        }),
                  ),
                  Container(
                    height: 200,
                    color: Colors.black,
                    child: GridView.builder(
                        shrinkWrap:true,
                        physics: BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 2,
                            childAspectRatio: 0.65),
                        itemCount: a.length,
                        itemBuilder:(BuildContext context,int index){
                          return Column(
                            children: [
                              //Text(data)
                              Container(
                                height:180,
                                width: 180,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    image: DecorationImage(
                                      image: AssetImage(a[index].image),
                                      fit: BoxFit.fill,
                                    )
                                ),
                              ),

                            ],
                          );
                        }),
                  ),
                ]



              ),
          ),
      ),
    );
  }
}
