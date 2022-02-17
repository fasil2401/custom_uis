import 'package:flutter/material.dart';

class HeadText extends StatelessWidget {
  final String data;
  const HeadText({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
    );
  }
}

class ContentText extends StatelessWidget {
  final String data;
  ContentText({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(
          color: Color.fromARGB(255, 95, 93, 93),
          fontSize: 20,
          fontWeight: FontWeight.normal),
    );
  }
}
