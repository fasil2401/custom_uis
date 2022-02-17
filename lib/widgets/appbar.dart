import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  final String text;
  final IconData? iconstart;
  final IconData? iconend;
  const AppBarCustom({ Key? key,required this.text, this.iconstart, this.iconend }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      leading: IconButton(
          icon:  Icon(iconstart),
          onPressed: () {},
        ),
        title: Text(text,
        style:const TextStyle(
          fontSize: 22
        ),),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: (){},
          icon: Icon(iconend))
        ],   
    );
  }
}