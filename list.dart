import 'package:flutter/material.dart';



class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {

  final ctrl = TextEditingController();
  final ctrl2 = TextEditingController();

  List clist = [];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("LIST",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         TextFormField(
           controller: ctrl,
         ),
          ElevatedButton(onPressed: (){
           setState(() {
             clist.add(ctrl.text);
             print(clist);
           });
          }, child: Text("ok")),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              width: 400,
              child: ListView.builder(
                itemCount: clist.length,
                  itemBuilder: (BuildContext,index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        color: Colors.cyan,
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
