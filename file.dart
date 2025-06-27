import 'package:flutter/material.dart';


class file extends StatefulWidget {
  const file({super.key});

  @override
  State<file> createState() => _fileState();
}

class _fileState extends State<file> {

  TextEditingController ctrl = TextEditingController();


  String str1 = "", str2 = "",optr ="";
  bool clk = false;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: ctrl,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){

                if(clk)
                  {
                    str2 ="1";
                    ctrl.text = str2;
                  }else
                    {
                      str1 ="1";
                      ctrl.text = str1;
                    }

              }, child: Text("1")),
              ElevatedButton(onPressed: (){

                if(clk)
                {
                  str2 ="2";
                  ctrl.text = str2;
                }else
                {
                  str1 ="2";
                  ctrl.text = str1;
                }
              }, child: Text("2")),


              ElevatedButton(onPressed: (){
               ctrl.text ="+";
               optr ="+";
               clk = true;
              }, child: Text("+")),



              ElevatedButton(onPressed: (){
                    if(optr == "+")
                      {
                        int a = int.parse(str1);
                        int b = int.parse(str2);
                        int res = a + b;

                        ctrl.text = res.toString();

                      }

                    if(optr == "+"){
                      int a = int.parse(str1);
                      int b = int.parse(str2);
                      int res = a + b;

                      ctrl.text = res.toString();
                    }
                    if(optr == "-"){
                      int a = int.parse(str1);
                      int b = int.parse(str2);
                      int res = a - b;

                      ctrl.text = res.toString();
                    }
                    if(optr == "*"){
                      int a = int.parse(str1);
                      int b = int.parse(str2);
                      int res = a * b;

                      ctrl.text = res.toString();
                    }
                    if(optr == "/"){
                      double a = double.parse(str1);
                      double b = double.parse(str2);
                      double res = a / b;

                      ctrl.text = res.toString();

                    }
              }, child: Text("=")),
            ],
          )
        ],
      ),
    );
  }
}
