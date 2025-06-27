import 'package:flutter/material.dart';
import 'package:sample/scrren/index.dart';



class mob extends StatefulWidget {
  const mob({super.key});

  @override
  State<mob> createState() => _mobState();
}

class _mobState extends State<mob> {


  final optr = TextEditingController();
  final optr2 = TextEditingController();



  List<String> cal = [];






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("LIST"),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              controller: optr,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {
                    setState(() {

                    });

                    cal.sort();
                    var d = cal.first;
                    print(cal);

                    showDialog(context: (context), builder: (BuildContext)
                    {
                      return AlertDialog(
                        actions: [
                          Text("$cal"),
                          Text("min num $d"),
                        ],
                      );
                    });
                  },
                  child: Text("MIN"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {

                    });

                    cal.sort();
                    var d = cal.first;
                    print(cal);

                    showDialog(context: (context), builder: (BuildContext)
                    {
                      return AlertDialog(
                        actions: [
                          Text("$cal"),
                          Text("max num $d"),
                        ],
                      );
                    });
                  },
                  child: Text("MAX"),
                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    cal.add(optr.text);
                    print(cal);
                  });
                }, child: Text("OK")),
                ElevatedButton(
                  onPressed: () {
                    setState(() {

                    });


                  },
                  child: Text("ASC"),
                ),
                ElevatedButton(onPressed: (){
                  setState(() {

                  });


                },
                    child: Text("DEC")),
              ],
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 500,
                    width: 400,
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
                                                title: TextFormField(controller: optr2,),
                                                actions: [
                                                  OutlinedButton(onPressed: (){
                                                    setState(() {
                                                      cal[index] =  optr2.text;
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
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
