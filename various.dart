import 'package:flutter/material.dart';
import 'package:sample/scrren/index.dart';



class various extends StatefulWidget {
  const various({super.key});

  @override
  State<various> createState() => _variousState();
}

class _variousState extends State<various> {

  final optr1 = TextEditingController();
  final optr2 = TextEditingController();
  final optr3 = TextEditingController();

  List<Map<String, String>> cal = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Cont History")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            TextFormField(
              controller: optr1,
              decoration: const InputDecoration(
                labelText: "Enter Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: optr2,
              decoration: const InputDecoration(
                labelText: "Enter Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: optr3,
              decoration: const InputDecoration(
                labelText: "Enter Gmail",
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  cal.add({
                    'name': optr1.text,
                    'password': optr2.text,
                    'gmail': optr3.text,
                  });

                  // Clear the fields
                  optr1.clear();
                  optr2.clear();
                  optr3.clear();
                });
              },
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 400,
              width: 350,
              decoration: const BoxDecoration(
                color: Colors.yellowAccent,
              ),
              child: ListView.builder(
                itemCount: cal.length,
                itemBuilder: (context, index) {
                  final item = cal[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 80,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              title: Text("Name: ${item['name']}"),
                              subtitle: Text("Gmail: ${item['gmail']}"),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => pnk(a: item['name'] ?? ''),
                                  ),
                                );
                              },
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () {
                              optr2.text = item['password'] ?? '';
                              showDialog(
                                context: context,
                                builder: (_) {
                                  return AlertDialog(
                                    title: TextFormField(controller: optr2),
                                    actions: [
                                      OutlinedButton(
                                        onPressed: () {
                                          setState(() {
                                            cal[index]['password'] = optr2.text;
                                            Navigator.pop(context);
                                          });
                                        },
                                        child: const Text("Update"),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              setState(() {
                                cal.removeAt(index);
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

