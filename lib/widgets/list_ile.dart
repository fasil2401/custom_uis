import 'package:flutter/material.dart';

class ListTileCustom extends StatefulWidget {
  final String text;
  final IconData iconstart;
  final Widget? iconend;
  final bool? toggle;
  const ListTileCustom(
      {Key? key,
      required this.text,
      required this.iconstart,
      this.iconend,
      this.toggle})
      : super(key: key);

  @override
  State<ListTileCustom> createState() => _ListTileCustomState();
}

class _ListTileCustomState extends State<ListTileCustom> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          widget.iconstart,
          size: 30,
          color: const Color.fromARGB(255, 75, 74, 74),
        ),
        title: Text(
          widget.text,
          style: const TextStyle(
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
        ));
  }
}

class ListTuleCustomThird extends StatelessWidget {
  final String title;
  final String trailtext;
  final IconData icon;
  const ListTuleCustomThird(
      {Key? key,
      required this.title,
      required this.trailtext,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
      ),
      contentPadding: const EdgeInsets.only(left: 5.0, right: 0.0,top: 0.0,bottom: 0.0),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            trailtext,
            style: const TextStyle(fontSize: 18, color: Colors.grey),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                size: 20,
              )),
        ],
      ),
    );
  }
}
