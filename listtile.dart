import 'package:flutter/material.dart';
class lis extends StatefulWidget {
  const lis({super.key});

  @override
  State<lis> createState() => _lisState();
}

class _lisState extends State<lis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: Icon(Icons.arrow_back,),
        title: Center(child: Text("MENU"),),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlue,
              ),
              child: ListTile(
                title: Text("enter",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.normal)),
                leading: Icon(Icons.abc,size: 20,color: Colors.black,),
                trailing: Icon(Icons.arrow_forward),
                onTap: (){

                }
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(),
                color: Colors.green,
              ),
              child: ListTile(
                title: Text("profile",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.normal),),
                leading: Icon(Icons.person,size: 20,color: Colors.black,),
                trailing: Icon(Icons.arrow_back_ios_new,size: 20,color: Colors.black,),
                onTap: (){

                }
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 9,
              child: ListTile(
                title: Text("Notifications",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.normal)),
                leading: Icon(Icons.notifications,color: Colors.black,size: 20,),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: (){

                },

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(),
                color: Colors.red,
              ),
              child: ListTile(
                title: Text("attendance",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.normal)),
                leading: Icon(Icons.face,size: 20,color: Colors.black,),
                trailing: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black,),
                onTap: (){

                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
                color: Colors.yellowAccent,
              ),
              child: ListTile(
                title: Text("Leave",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.normal)),
                leading: Icon(Icons.exit_to_app,size: 20,color: Colors.black,),
                trailing: Icon(Icons.arrow_forward),
                onTap: (){

                }
              ),

            ),
          ),


        ],
      ),
      
    );
  }
}
