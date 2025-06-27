import 'package:flutter/material.dart';


class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: Icon(Icons.menu,size: 35,color: Colors.cyan,),
        title: Text("LG",style: TextStyle(color: Colors.cyan,fontSize: 35,fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera),
          ),
        ],

      ),
      body: Column(
        children: [


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: "Enter Name",
                border: OutlineInputBorder(),
              ),
            ),
          ),


          ///
          Container(
            height: 200,
            width: 300,
           // color: Colors.cyan,
            decoration: BoxDecoration(
              color: Colors.cyan,
              border: Border.all(),
             // borderRadius: BorderRadius.circular(35),
              image: DecorationImage(
                  image: AssetImage("assets/ref.jpeg"),
                fit: BoxFit.fill
              ),
              shape: BoxShape.circle
            ),
            child: Center(child: Text("data")),
          ),

        ],
      ),
    );
  }
}
