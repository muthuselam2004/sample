import 'package:flutter/material.dart';
import 'package:sample/scrren/index.dart';

import 'model.dart';


class cont extends StatefulWidget {
  const cont({super.key});

  @override
  State<cont> createState() => _contState();
}

class _contState extends State<cont> {

  final ctrl = TextEditingController();
  final ctrl2 = TextEditingController();



  List clist = [];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("LIST",style: TextStyle(color: Colors.black),),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: ctrl,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){
            setState(() {
              clist.add(ctrl.text);
              print(clist);
            });
          }, child: Text("ENTER",style: TextStyle(color: Colors.black),)),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.cyan
              ),
              child: ListView.builder(
                  itemCount: clist.length,
                  itemBuilder: (BuildContext,index)
                  {
                    return GestureDetector(
                      onTap: (){
                        
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>pnk(a: clist[index])));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(

                          child: Container(
                            height: 40,
                            color: Colors.white,
                            child: Row(
                              children: [
                                Text(clist[index]),
                                GestureDetector(
                                    onTap: ()
                                    {
                                      showDialog(context: (context), builder:(BuildContext)
                                      {
                                        return AlertDialog(
                                          title: TextFormField(controller: ctrl2,),
                                          actions: [
                                            OutlinedButton(onPressed: (){
                                              setState(() {
                                                clist[index] =  ctrl2.text;
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
                                        clist.removeAt(index);
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
            ),
          )
        ],
      ),
    );
  }
}
