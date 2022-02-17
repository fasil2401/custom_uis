import 'package:flutter/material.dart';

class ListTileCustom extends StatefulWidget {
  final String text;
  final IconData iconstart;
  final Widget? iconend;
  final bool? toggle;
  const ListTileCustom(
      {Key? key, required this.text, required this.iconstart, this.iconend, this.toggle})
      : super(key: key);

  @override
  State<ListTileCustom> createState() => _ListTileCustomState();
}

class _ListTileCustomState extends State<ListTileCustom> {

 
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: Icon(widget.iconstart,
      size: 30,
      color: const Color.fromARGB(255, 75, 74, 74),),
      title: Text(
        widget.text,
        style:const TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 59, 59, 59)),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(           
            child: widget.iconend,
          )
        ],
      )
    );
  }
}
