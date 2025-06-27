import 'package:flutter/material.dart';
import 'package:sample/scrren/index.dart';



class leg extends StatefulWidget {
  const leg({super.key});

  @override
  State<leg> createState() => _legState();
}

class _legState extends State<leg> {
  final TextEditingController optr1 = TextEditingController(); // Name
  final TextEditingController optr2 = TextEditingController(); // Password
  final TextEditingController optr3 = TextEditingController(); // Gmail

  List<Map<String, String>> cal = [];

  void a () {
    optr1.clear();
    optr2.clear();
    optr3.clear();
  }

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
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (optr1.text.isNotEmpty &&
                    optr2.text.isNotEmpty &&
                    optr3.text.isNotEmpty) {
                  setState(() {
                    cal.add({
                      'name': optr1.text,
                      'password': optr2.text,
                      'email': optr3.text,
                    });
                    a();
                  });
                }
              },
              child: const Text("Login", style: TextStyle(color: Colors.black)),
            ),
            const SizedBox(height: 20),
            Container(
              height: 400,
              width: 350,
              decoration: BoxDecoration(color: Colors.yellowAccent),
              child: ListView.builder(
                itemCount: cal.length,
                itemBuilder: (context, index) {
                  final item = cal[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name: ${item['name']}"),
                          Text("Password: ${item['password']}"),
                          Text("Email: ${item['email']}"),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  optr1.text = item['name']!;
                                  optr2.text = item['password']!;
                                  optr3.text = item['email']!;
                                  showDialog(
                                    context: context,
                                    builder: (_) {
                                      return AlertDialog(
                                        title: const Text("Edit Info"),
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            TextField(
                                              controller: optr1,
                                              decoration: const InputDecoration(
                                                  labelText: "Name"),
                                            ),
                                            TextField(
                                              controller: optr2,
                                              decoration: const InputDecoration(
                                                  labelText: "Password"),
                                            ),
                                            TextField(
                                              controller: optr3,
                                              decoration: const InputDecoration(
                                                  labelText: "Email"),
                                            ),
                                          ],
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              setState(() {
                                                cal[index] = {
                                                  'name': optr1.text,
                                                  'password': optr2.text,
                                                  'email': optr3.text,
                                                };
                                                a();
                                                Navigator.pop(context);
                                              });
                                            },
                                            child: const Text("Update"),
                                          )
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
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

