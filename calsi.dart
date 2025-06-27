import 'package:flutter/material.dart';



class calcus extends StatefulWidget {
  const calcus({super.key});

  @override
  State<calcus> createState() => _calcusState();
}

class _calcusState extends State<calcus> {

  TextEditingController ctrl = TextEditingController();


  String str1 = "", str2 = "",optr = "";
  bool clk = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("calculator"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: ctrl,
              readOnly: true,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  if(clk){
                    str2 += "1";
                    ctrl.text = str2;
                  }
                  else {
                    str1 += "1";
                    ctrl.text = str1;
                  }
                }, child: Text("1")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  if(clk){
                    str2 += "2";
                    ctrl.text = str2;
                  }
                  else {
                    str1 += "2";
                    ctrl.text = str1;
                  }
                }, child: Text("2")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  if(clk){
                    str2 += "3";
                    ctrl.text = str2;
                  }
                  else{
                    str1 += "3";
                    ctrl.text = str1;
                  }
                    }, child: Text("3")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  ctrl.text = "+";
                  optr = "+";
                  clk = true;


                }, child:Text("+")),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  if(clk){
                    str2 += "4";
                    ctrl.text = str2;
                  }
                  else {
                    str1 += "4";
                    ctrl.text = str1;
                  }
                }, child: Text("4")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  if(clk){
                    str2 += "5";
                    ctrl.text = str2;
                  }
                  else {
                    str1 += "5";
                    ctrl.text = str1;
                  }
                }, child: Text("5")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  if(clk){
                    str2 += "6";
                    ctrl.text = str2;
                  }
                  else {
                    str1 += "6";
                    ctrl.text = str1;
                  }
                }, child: Text("6")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  ctrl.text = "-";
                  optr = "-";
                  clk = true;
                }, child: Text("-")),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  if(clk){
                    str2 += "7";
                    ctrl.text = str2;
                  }
                  else {
                    str1 += "7";
                    ctrl.text = str1;
                  }
                }, child: Text("7")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  if(clk){
                    str2 += "8";
                    ctrl.text = str2;
                  }
                  else {
                    str1 += "8";
                    ctrl.text = str1;
                  }
                }, child: Text("8")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  if(clk){
                    str2 += "9";
                    ctrl.text = str2;
                  }
                  else {
                    str1 += "9";
                    ctrl.text = str1;
                  }
                }, child: Text("9")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  ctrl.text = "*";
                  optr = "*";
                  clk = true;
                }, child: Text("*")),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  if(clk){
                    str2 += ".";
                    ctrl.text = str2;
                  }
                  else {
                    str1 += ".";
                    ctrl.text = str1;
                  }
                }, child: Text(".")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  ctrl.text = "/";
                  optr = "/";
                  clk = true;
                }, child: Text("/")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  ctrl.text = "%";
                  optr = "%";
                  clk = true;
                }, child: Text("%")),
              ),
              ElevatedButton(onPressed: ()
              {
                double a = double.parse(str1);
                double b = double.parse(str2);
                double res = 0;
                if(optr == "+"){
                  res = a + b;
                }
                if(optr == "-"){
                  res = a - b;
                }
                if (optr == "*"){
                  res = a * b;
                }
                {
                  if(optr == "/"){
                    if(b!=0){
                      res = (a~/b) as double;
                    } else {
                      ctrl.text = "Err";
                      return;
                    }
                  }
                  if(optr == "%"){
                    if(b!=0){
                      res = a % b;
                    }else{
                      ctrl.text = "Err";
                      return;
                    }
                  }
                }
                ctrl.text = res.toString();
                clk = false;

              }, child: Text("=")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  if(clk){
                    str2 += "0";
                    ctrl.text = str2;
                  }
                  else {
                    str1 += "0";
                    ctrl.text = str1;
                  }
                }, child: Text("0")),
              ),
            ],
          )
        ],
      ),
    );
  }
}
