import 'package:flutter/material.dart';

class Payments extends StatelessWidget {
  const Payments({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
      leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title:const Text('Payments',
        style: TextStyle(
          fontSize: 22
        ),),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: (){},
          icon: Icon(Icons.info_outline_rounded))
        ],   
    ),
    );
  }
}