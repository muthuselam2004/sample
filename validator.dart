
import 'package:flutter/material.dart';
import 'package:sample/value.dart';


class validator extends StatefulWidget {
  const validator({super.key});

  @override
  State<validator> createState() => _validatorState();
}

class _validatorState extends State<validator> {


  final _key = GlobalKey<FormState>();

  bool show = false;



  TextEditingController ctrl = TextEditingController();
  TextEditingController app = TextEditingController();
  TextEditingController lap = TextEditingController();
  TextEditingController mob = TextEditingController();

  vis()
  {
    setState(() {
      ctrl.text.isNotEmpty && app.text.isNotEmpty && lap.text.isNotEmpty && mob.text.isNotEmpty ? show = true : show= false;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: ctrl,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "ENTER THE NAME",
                    border: OutlineInputBorder(),
                  ),
                  validator: (a) {
                    if(a == null || a.isEmpty){
                      return "enter the valid name";
                    }
          
                  },
                  onChanged: (i){
                  vis();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: app,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    hintText: "ENTER THE EMAIL",
                    border: OutlineInputBorder(),
                  ),
                  validator: (a)
                  {
                    if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(a!))
                  {
                  return "please enter valid mail";
                  }
                  return null;
                },
                  onChanged: (a){
                   vis();
                },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: lap,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    hintText: "ENTER THE PASSWORD",
                    border: OutlineInputBorder(),
                  ),
                  validator: (a) {
                    if (!RegExp(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                        .hasMatch(a!)) {
                      return "please enter valid password";
                    }
                    return null;
                  },
                  onChanged: (b){
                    vis();
                  }
          
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: mob,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    hintText: "ENTER THE MOBILE NUMBER",
                    border: OutlineInputBorder(),
                  ),
                  validator: (a)
                      {
                        if(!RegExp(
                            r'(^(?:[+0]9)?[0-9]{10,12}$)')
                            .hasMatch(a!))
                          {
                            return "please enter valid phone number";
                          }
                        return null;
                      },
                  onChanged: (c){
                    vis();
                  }
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed:(){
                   if(_key.currentState!.validate());
                },child: Text("LOGIN",style: TextStyle(color: Colors.black),)),
              ),
          
          
              Container(
                height: 500,
                width: 200,
                color: Colors.cyan,
              )
            ],
          ),
        ),
      ),
    );
  }
}










