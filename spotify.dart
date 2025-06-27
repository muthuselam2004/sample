

import 'package:flutter/material.dart';

import 'model.dart';


class spot extends StatefulWidget {
  const spot({super.key});

  @override
  State<spot> createState() => _spotState();
}

class _spotState extends State<spot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: NestedScrollView(
         headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
         {
           return [SliverAppBar(
             automaticallyImplyLeading:false,
             snap: false,
             pinned: true,
             floating: false,
             backgroundColor: Colors.blueGrey,
             title: Icon(Icons.arrow_back,color: Colors.white,),
             flexibleSpace: FlexibleSpaceBar(
               centerTitle: true,
               title: Text("Vinnaithandi varuvaiya ",style: TextStyle(color: Colors.white,fontSize: 20,),),
               background: Column(
                 children: [
                   Row(
                     children: [

                     ],
                   ),
                   Image(image: AssetImage("assets/str.jpg"))
                 ],
               ),
             ),
             expandedHeight: 430.5,
           )];
         },


         body:Column(
           children: [
             Container(
               height: 50,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   IconButton(onPressed: (){}, icon: Icon(Icons.add_circle,color: Colors.black,)),
                   IconButton(onPressed: (){}, icon: Icon(Icons.downloading_rounded,color: Colors.black,)),
                   IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.black,)),
                   IconButton(onPressed: (){}, icon: Icon(Icons.shuffle,color: Colors.black,)),
                   Container(
                     decoration: BoxDecoration(
                       color: Color(0xFF1DB954),
                       shape: BoxShape.circle,
                       
                     ),
                     child: IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow,color: Colors.black,)),
                   )
                 ],
               ),
             ),
             Expanded(
               
               
               child: ListView.builder(
                   scrollDirection: Axis.vertical,
                   itemCount: a.length,
                   itemBuilder:(BuildContext context,int index)
                   {
                     return Container(
                       decoration: BoxDecoration(
                           gradient: LinearGradient(colors: [Color(0xfff121212),Color(0xfff121212)])
                       ),
                       child: ListTile(
                         leading: Container(
                           height: 550,
                           width: 65,
                           decoration: BoxDecoration(
                             shape: BoxShape.rectangle,
                           ),
                           child: Image(image: AssetImage(a[index].image),
                               fit: BoxFit.fill),

                         ),
                         title: Text(a[index].text,style: TextStyle(color: Colors.white),),
                         trailing: Icon(Icons.more_vert,color: Colors.white,),
                       ),
                     );
                   }

               ),
             ) ,
           ],
         )
     ),

    );
  }
}
