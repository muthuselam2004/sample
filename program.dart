import 'package:flutter/material.dart';


class program extends StatelessWidget {
  const program({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: Icon(Icons.menu,size: 25,color: Colors.black,),
        title: Center(
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.cyan,
              border: Border.all(),
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage("assets/ref.jpeg"),
                fit: BoxFit.fill,
              )
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.schedule,size: 25,color: Colors.black,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.exit_to_app,size: 25,color: Colors.black,),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      border: Border.all(),
                      borderRadius: BorderRadius.only(),
                      image: DecorationImage(
                        image: AssetImage("assets/apps.jpeg"),
                        fit: BoxFit.fill,
                      )
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
                      border: Border.all(),
                      borderRadius: BorderRadius.only(),
                      image: DecorationImage(
                        image: AssetImage("assets/apps 2.jpeg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(),
                      borderRadius: BorderRadius.only(),
                      image: DecorationImage(
                        image: AssetImage("assets/ref.jpeg"),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      border: Border.all(),
                      borderRadius: BorderRadius.only(),
                      image: DecorationImage(
                        image: AssetImage("assets/apps.jpeg"),
                        fit: BoxFit.fill,
                      )

                    ),
                  ),
                )


              ],
            ),
          ),
          Container(
            height: 350,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.yellowAccent,
              border: Border.all(),
              borderRadius: BorderRadius.only(),
              image: DecorationImage(
                image: AssetImage(""),
                fit: BoxFit.fill
              )

            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person,size: 25,color: Colors.black,),
                      hintText: "ENTER YOUR NAME",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.password,size: 25,color: Colors.black,),
                      hintText: "ENTER YOUR PASSWORD",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){}, child: Text("LOGIN",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){}, child: Text("FORGET PASSWORD",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),)),
                ),
              ],

                  ),
                ),
              ]
            ),

          );





  }
}
