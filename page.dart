import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sample/scrren/flipkart.dart';


class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pageState();
}


class _pageState extends State<page> {

  String ourValue = '1';
  List<String> system = ['1','2','3','4'];

  List me = [
    "assets/flip.jpg",
    "assets/mobile.jpg",
    "assets/phone.jpg",
    "assets/W.jpg",
    "assets/U.jpg",
  ];
  final PageController PageViewDot = PageController();
  int Selectedpage = 0;
  int currentindex = 0;
  int _selectedquality = 4;

  void onPageChanged (int index){
    setState(() {
      currentindex = index;
    });

  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       //automaticallyImplyLeading: true,
       leading: IconButton(onPressed: (){
         Navigator.push(
          context,
           MaterialPageRoute(builder: (context) => const flip()),
         );

       }, icon: Icon(Icons.arrow_back)),
       backgroundColor: Colors.white,
       title: Column(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Row(
                 children: [
                   SizedBox(
                     width: 230,
                     child: TextFormField(
                       decoration: InputDecoration(
                         hintText: "Search for products",
                         hintStyle: TextStyle(color: Colors.black),
                         prefixIcon: Icon(Icons.search),
                         suffixIcon: SizedBox(
                           width: 60,
                           child: Row(
                             children: [
                               Icon(Icons.camera_alt_outlined),
                               Icon(Icons.mic)
                             ],
                           ),
                         ),
                        border: OutlineInputBorder(),
                         ),
                       ),

                     ),

                 ],
               )
             ],
           )
         ],
       ),
       actions: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Icon(Icons.qr_code),
         ),
       ],
     ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Visit the Fashion Frill store",style: TextStyle(color: Colors.cyan,
                    fontSize: 10,fontWeight: FontWeight.normal)
                  ,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 10,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
            ),
            Text("112",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.normal),)
          ],
        ),


                
              ],
            ),
            Text("Fashion Frill Silver couple Ring for women men closed Hand Stainless Steel Promiser silver ring for girls",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 200,
                    onPageChanged: (index,c){
                      setState(() {
                        currentindex = index;
                      });
                    },
                    aspectRatio: 16/9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),

                  itemCount: me.length,
                  itemBuilder: (BuildContext a, int b, int c) {
                    return Container(

                      height: 400,
                      width: 450,
                      decoration: BoxDecoration(
                        // border: Border.all(),
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage(me[b]),
                          fit: BoxFit.cover,

                        ),
                      ),

                    );
                  },





                ),
              ),
            ),
            Center(
              child: DotsIndicator(
                  dotsCount: me.length,
                position: currentindex.toDouble(),
                decorator: DotsDecorator(
                  size: Size.square(8.0),
                  activeSize: Size(16.0, 0.8),
                  activeShape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
                  )
                ),


              ),
            ),
            RichText(
                text:TextSpan(text: '-75%',style: TextStyle(
                  color: Colors.red.shade800,fontSize: 38,fontWeight: FontWeight.normal,
                ),
                  children: [
                    WidgetSpan(child: Transform.translate(offset: Offset(0, -4),
                      child: Text("\u{20B9}",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),



                    )),
                    TextSpan(
                      text: "179",style: TextStyle(
                      color: Colors.black,fontSize: 30,fontWeight: FontWeight.normal,
                    )
                    ),
                  ]

                ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(text: "M.R.P. :",
                    style: TextStyle(color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  children: [
                    TextSpan(
                      text: '\$999',
                      style:
                       TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),

                  ]

                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                  text: TextSpan(text: 'Inclusive of all taxes',
                      style: TextStyle(color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.normal)),
              ),
            ),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Text('\u{0025}',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),),
                title: Center(child: Text("All offers & discounts")),
                tileColor: Colors.grey,
                trailing: Icon(Icons.arrow_forward_ios),


              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "free delivery,",style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(".Friday,13 June",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text("Details",style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                  text: TextSpan(
                      text: "Delivering to coimbatore 601603 - Update location",
                      style: TextStyle(color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                  text:TextSpan(text: 'In Stock',
                      style: TextStyle(color: Colors.green,
                          fontSize: 17,
                          fontWeight: FontWeight.normal))

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: "Select Quality",
                  border: OutlineInputBorder(),
                ),
                  value: ourValue,
                  items: system.map((String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child:Text(value)
                    );
                  }).toList(),
                  onChanged: (String? newValue){
                  setState(() {
                    ourValue = newValue!;
                  });
                  },
              ),
            ),
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(30),

                          ),
                        ),
                        child: Text("Add to cart",style: TextStyle(color: Colors.black),)
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Center(
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellowAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(30),

                          ),
                        ),
                        child: Text("Buy Now",style: TextStyle(color: Colors.black),)
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                  text: TextSpan(text: "Add to Wish List",
                      style: TextStyle(color: Colors.cyan,
                          fontWeight: FontWeight.normal,
                          fontSize: 20)),
              ),
            ),


                
                

          ],
        ),
      ),

    );
  }
}
