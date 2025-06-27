import 'package:flutter/material.dart';
import 'package:sample/scrren/list.dart';

import 'index.dart';



class cls extends StatefulWidget {
  const cls({super.key});

  @override
  State<cls> createState() => _clsState();
}

class _clsState extends State<cls> {

  final TextEditingController name = TextEditingController();
  final TextEditingController pass = TextEditingController();
  final TextEditingController email = TextEditingController();





  List cal = [];



  me()
  {
    String text1 = name.text;
    String text2 = pass.text;
    String text3 = email.text;


    setState(() {

    });
  }








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Cont History"),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            TextFormField(
              controller: name,
              decoration: InputDecoration(
                labelText: "Enter Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: pass,
              decoration: InputDecoration(
                labelText: "Enter Password",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                labelText: "Enter Gmail",
                border: OutlineInputBorder(),
              ),
            ),
          ElevatedButton(
            onPressed: () {
              if (name.text.isNotEmpty &&
                  pass.text.isNotEmpty &&
                  email.text.isNotEmpty) {
                setState(() {
                  cal.add("$name\n$pass\n$email\n");
                  me();


                });
              }
            },
            child: const Text("Login", style: TextStyle(color: Colors.black)),
          ),
            SizedBox(height: 20,),
            Container(
              height: 400,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.yellowAccent,
              ),
              child: ListView.builder(
                  itemCount: cal.length,
                  itemBuilder: (BuildContext,index)
                  {
                    return GestureDetector(
                      onTap: (){
        
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>pnk(a: cal[index])));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
        
                          child: Container(
                            height: 40,
                            color: Colors.white,
                            child: Row(
                              children: [
                                Text(cal[index]),
                                GestureDetector(
                                    onTap: ()
                                    {
                                      showDialog(context: (context), builder:(BuildContext)
                                      {
                                        return AlertDialog(
                                          title: TextFormField(controller: pass,),
                                          actions: [
                                            OutlinedButton(onPressed: (){
                                              setState(() {
                                                cal[index] =  pass.text;
                                                Navigator.pop(context);
                                              });
                                            }, child: Text("update")),
                                          ],
                                        );
                                      });
                                    },
                                    child: Icon(Icons.edit)),
                                GestureDetector(
                                    onTap: (){
        
                                      setState(() {
                                        cal.removeAt(index);
                                      });
                                    },
                                    child: Icon(Icons.delete)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
