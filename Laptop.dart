import 'package:flutter/material.dart';


class laptop extends StatelessWidget {
  const laptop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(),
          borderRadius: BorderRadius.only(),
          image: DecorationImage(
            image: AssetImage("chip.jpeg"),
            fit: BoxFit.fill,
          )
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            border: Border.all(),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            image: DecorationImage(
                              image: AssetImage("L.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Center(child: Text("PIC",style: TextStyle(color: Colors.white))),
                      ],
                    ),

                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),


                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  topLeft: Radius.circular(40),
                                ),
                                image: DecorationImage(
                                  image: AssetImage("L.jpg"),
                                  fit: BoxFit.cover,
                                )
                              ),
                            ),
                            Center(child: Text("TREE",style: TextStyle(color: Colors.black),),)
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),

               Container(
                height: 480,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.only(),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(),
                              border: Border.all(),
                              image: DecorationImage(
                                image: AssetImage("apps.jpeg"),
                                fit: BoxFit.fill
                              )
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.pink,
                                      border: Border.all(),
                                      borderRadius: BorderRadius.only(),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.only(),
                                      border: Border.all(),
                                    ),
                                  ),
                                )
              
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.yellowAccent,
                                      border: Border.all(),
                                      borderRadius: BorderRadius.only(),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.cyan,
                                      borderRadius: BorderRadius.only(),
                                      border: Border.all(),
                                    ),
              
                                  ),
                                ),
              
                              ],
                            ),
              
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      border: Border.all(),
                                      borderRadius: BorderRadius.only(),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.only(),
                                      border: Border.all(),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      border: Border.all(),
                                      borderRadius: BorderRadius.only(),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.lightBlue,
                                      borderRadius: BorderRadius.only(),
                                      border: Border.all(),
              
                                    ),
                                  ),
                                ),
              
              
              
              
              
              
              
              
              
              
                              ],
                            ),
                          ],
                        ),
                        Expanded(child: Text('My name is muthuselvam i am from tirupur i am completed my ug in erode as a Bsc It')),
              
              
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 200,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.email),
                                      hintText: "ENTER NAME",
                                      border: OutlineInputBorder(),
                                    ),
                                  )),
                              ],
                            )
                          ],
                        ),
                        ElevatedButton(onPressed: (){}, child: Text("LOGIN")),
                      ],
                    )
                  ],
                ),
              ),

          ],
        ),
      ),
    );
  }
}

