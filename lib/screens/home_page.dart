//fstateless

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bolt'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:const Column(
       children: [
        Padding(padding: EdgeInsets.all(100),
         child:  TextField(
            decoration: InputDecoration
             (hintText: "I am a child of God",
             border: OutlineInputBorder()
             ),
          ),), 
           SizedBox(height: 20,),
          Padding(padding: EdgeInsets.all(100),
          child: TextField(
            decoration: InputDecoration
             (hintText: "I am a feared man",
             border: OutlineInputBorder()
             ),
           ),),
          
        ],
      ),
    );
  }
}
