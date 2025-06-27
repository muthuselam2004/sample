import 'package:flutter/material.dart';



class task extends StatefulWidget {
  const task({super.key});

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {


  final key = GlobalKey<FormState>();

  bool show = false;


  TextEditingController ctrl = TextEditingController();
  TextEditingController web = TextEditingController();


  you()
  {
    setState(() {
      ctrl.text.isNotEmpty && web.text.isNotEmpty ? show = true : show = false;
    });
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UNGRADUATION",style: TextStyle(color: Colors.cyan,fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.only(),
            image: DecorationImage(
              image: AssetImage("assets/chip.jpg"),
              fit: BoxFit.fill,
            )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                      height: 600,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage("assets/pic.jpg"),
                          fit: BoxFit.fill,
                        ),

                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 350,
                            height: 350,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Center(child: Text("Login",style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.normal,fontSize: 25),),),
                                  ),
                                ),
                                Container(
                                  child: Center(child: Text("do you have a account",style: TextStyle(color: Colors.cyan),),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    controller: ctrl,
                                    decoration: InputDecoration(
                                      hintText: "Enter the name",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    validator: (a){
                                      if (a == null || a.isEmpty)
                                      {
                                        return "enter the valid name";
                                      }
                                      {
                                        return null;
                                      }

                                    },
                                    onChanged: (a){
                                      you();
                                    },

                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                      controller: web,
                                      decoration: InputDecoration(
                                        hintText: "Enter the password",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),

                                      ),
                                      validator: (a){
                                        if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(a!))
                                        {
                                          return"Enter the valid password";
                                        }
                                        {
                                          return null;
                                        }


                                      },
                                      onChanged: (a){
                                        you();
                                      }
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: Text("forgot password ?"),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ElevatedButton(onPressed: (){}, child: Text("LOGIN")),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: Center(child: Text("Create account",style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.normal),),),
                                      ),
                                    )



                                  ],
                                )


                              ],
                            ),

                          )







                        ],
                      )
                  ),

                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
