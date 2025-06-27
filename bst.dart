import 'package:flutter/material.dart';



class bst extends StatefulWidget {
  const bst({super.key});

  @override
  State<bst> createState() => _bstState();
}

class _bstState extends State<bst> {

  final TextEditingController pricecontroller = TextEditingController();
  final TextEditingController gstcontroller = TextEditingController();
  String result = "";


  void calculateGST(){
    double? price = double.tryParse(pricecontroller.text);
    double? gst   = double.tryParse(gstcontroller.text);

    if (price == null || gst == null){
      setState(() {
        result = "Enter the valid values";
      });
      return;
    }
    double gstAmount = (price * gst) / 100;
    double totalAmount = price + gstAmount;



    setState(() {

      showDialog(context: (context), builder: (BuildContext){
        return AboutDialog(
          children: [
            Text("$result") ,
          ],
        );
      });
      result = "Original price = \u20B9$price\n"
          "GST Rate: $gst%\n"
          "Gst Amount: \u20B9${gstAmount.toStringAsFixed(2)}\n"
          "Final Amount: \u20B9${totalAmount.toStringAsFixed(2)}\n";
    });

  }





  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
