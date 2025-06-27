import 'package:flutter/material.dart';


class access extends StatelessWidget {
  const access({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        leading: Icon(Icons.menu),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.yellowAccent,
                border: Border.all(),
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage("assets/ref.jpeg"),
                  fit: BoxFit.fill,
                )
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.schedule),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.only(),
                    border: Border.all(),
                    image: DecorationImage(
                      image: AssetImage("assets/ref.jpeg"),
                      fit: BoxFit.fill,
                    )
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.yellowAccent,
                            borderRadius: BorderRadius.only(),
                            border: Border.all()
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(),
                            borderRadius: BorderRadius.only()
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
                            color: Colors.cyan,
                            borderRadius: BorderRadius.only(),
                            border: Border.all(),
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),


            ],
          ),
          Container(
            height: 400,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.limeAccent,
              border: Border.all(),
              borderRadius: BorderRadius.only(),
              image: DecorationImage(
                image: AssetImage("assets/apps.jpeg"),
                fit: BoxFit.fill
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(),
                            border: Border.all()
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
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.red,
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
                                  color: Colors.cyan,
                                  borderRadius: BorderRadius.only(),
                                  border: Border.all(),
                                ),
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
                                  borderRadius: BorderRadius.only(),
                                  border: Border.all(),
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                        width: 150,
                        child: TextFormField()),
                    ElevatedButton(onPressed: (){}, child: Text("LOGIN")),
                  ],
                ),

              ],
            ),

          ),

        ],
      ),
    );
  }
}
