
import 'package:flutter/material.dart';


class readme extends StatelessWidget {
  const readme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(),
          border: Border.all(),
          image: DecorationImage(
            image: AssetImage("assets/chip.jpeg"),
            fit: BoxFit.fill,
          )
        ),
        child: Column(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.only(),
                    border: Border.all(),
                    image: DecorationImage(
                      image: AssetImage("L.jpg"),
                      fit: BoxFit.fill,
                    )
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        border: Border.all(),
                        borderRadius: BorderRadius.only(),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(),
                            border: Border.all(),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(),
                            borderRadius: BorderRadius.only(),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(),
                            border: Border.all(),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 400,
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
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(),
                              border: Border.all(),
                              image: DecorationImage(
                                image: AssetImage("W.jpg"),
                                fit: BoxFit.fill,
                              )
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        border: Border.all(),
                                        borderRadius: BorderRadius.only(),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.yellowAccent,
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 70,
                                      width: 70,
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
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(40),
                                        border: Border.all(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        icon: Icon(Icons.person,size: 30,color: Colors.black,),
                                        hintText: "ENTER THE EMAIL",
                                        border: OutlineInputBorder(),
                                      ),
                                    )),
                                  ElevatedButton(onPressed: (){}, child: Text("LOGIN",style: TextStyle(color: Colors.black,),))
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
