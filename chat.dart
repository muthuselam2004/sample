import 'package:flutter/material.dart';
import 'package:sample/scrren/index.dart';


class chat extends StatefulWidget {
  const chat({super.key});

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {

  final TextEditingController optr = TextEditingController();
  final TextEditingController optr2 = TextEditingController();

  List<int> cal = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("LIST")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                controller: optr,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter number',
                ),
              ),
            ),
            SizedBox(height: 10),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (cal.isNotEmpty) {
                      final min = cal.reduce((a, b) => a < b ? a : b);

                      showDialog(context: (context), builder: (BuildContext){
                        return AlertDialog(
                          actions: [
                            Text("$cal"),
                            Text("min num $min"),
                          ],
                        );
                      }


                      );

                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Minimum: $min")));
                    }
                  },
                  child: Text("MIN"),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (cal.isNotEmpty) {
                      final max = cal.reduce((a, b) => a > b ? a : b);

                      showDialog(context: (context), builder: (BuildContext){
                        return AlertDialog(
                          actions: [
                            Text("$cal"),
                            Text("max num $max"),
                          ],
                        );

                      }

                      );

                    }
                  },
                  child: Text("MAX"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (optr.text.isNotEmpty) {
                        cal.add(int.parse(optr.text));
                        optr.clear();
                      }
                    });
                  },
                  child: Text("OK"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                     var c = cal.sort();


                      showDialog(context: (context), builder: (BuildContext){
                        return AlertDialog(
                          actions: [
                            Text("$cal"),
                          ],
                        );
                      }
                      );
                    });
                  },
                  child: Text("ASC"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      cal.sort((a, b) => b.compareTo(a));

                      showDialog(context: (context), builder: (BuildContext){
                        return AlertDialog(
                          actions: [
                            Text("$cal"),
                          ],
                        );

                      }


                      );

                    });
                  },
                  child: Text("DEC"),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  border: Border.all(color: Colors.black),
                ),
                child: ListView.builder(
                  itemCount: cal.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      pnk(a: cal[index].toString())));
                        },
                        child: Container(
                          height: 50,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                cal[index].toString(),
                                style: TextStyle(fontSize: 18),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.edit,),
                                    onPressed: () {
                                      optr2.text = cal[index].toString();
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text("Edit Number"),
                                              content: TextFormField(
                                                controller: optr2,
                                                keyboardType:
                                                TextInputType.number,
                                              ),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      cal[index] =
                                                          int.parse(optr2.text);
                                                      Navigator.pop(context);
                                                    });
                                                  },
                                                  child: Text("Update"),
                                                ),
                                              ],
                                            );
                                          });
                                    },
                                  ),
                                  IconButton(
                                    icon:
                                    Icon(Icons.delete,),
                                    onPressed: () {
                                      setState(() {
                                        cal.removeAt(index);
                                      });
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
