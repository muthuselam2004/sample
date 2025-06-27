import 'package:flutter/material.dart';


class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {

  final TextEditingController heightcontroller = TextEditingController();
  final TextEditingController weightcontroller = TextEditingController();


  String bmiResult = '';
  String bmiCategory = '';

  void calculateBMI(){
    final double? height = double.tryParse(heightcontroller.text);
    final double? weight = double.tryParse(weightcontroller.text);

    if (height == null  || weight == null || height <=0 || weight <=0){
      setState(() {
        bmiResult = 'Invalid input';
        bmiCategory = '';
      });
      return;
    }

    double heightInMeters = height / 100;
    double bmi = weight / (heightInMeters * heightInMeters);
    String category;

    if(bmi < 18.5){
      category = 'underweight' ;
    }else if(bmi < 25){
      category = 'normal weight' ;
    }else if (bmi < 30){
      category = 'over weight' ;
    }else{
      category = 'obese' ;
    }
    setState(() {
      showDialog(context: (context), builder: (BuildContext) {
        return AboutDialog(
          children: [
            Text("$bmiResult,$bmiCategory"),
          ],
        );
      });
      bmiResult = 'your BMI is ${bmi.toStringAsFixed(1)}';
      bmiCategory = 'Category: ${category}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("BMI CALCULATE"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: heightcontroller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Height cm",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: weightcontroller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Weight kg",
                  border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (calculateBMI), child: Text("Calculate"))
        ],
      ),
    );
  }
}
