import 'package:flutter/material.dart';

class HeadText extends StatelessWidget {
  final String data;
  Color? color;
   HeadText({Key? key, required this.data,this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500,color: color),
    );
  }
}

class ContentText extends StatelessWidget {
  final String data;
  Color? color;
  ContentText({Key? key, required this.data,this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          color: color,
          fontSize: 20,
          fontWeight: FontWeight.normal),
    );
  }
}
class OrderText extends StatelessWidget {
  final String data;
  Color? color;
   OrderText({Key? key, required this.data,this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400,color: color),
    );
  }
}