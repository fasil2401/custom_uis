import 'package:flutter/material.dart';

class CardsCustom extends StatelessWidget {
  final IconData icon;
  final String text1;
  final String text2;
  final Color color;
  final bool banner;
  CardsCustom(
      {Key? key,
      required this.icon,
      required this.text1,
      required this.text2,
      required this.color,
      required this.banner})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(5)),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5), color: color),
                  child: Center(
                      child: Icon(
                    icon,
                    size: 30,
                    color: Colors.white,
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    text2,
                    style: const TextStyle(
                        fontSize: 26, fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      Visibility(
        visible: banner,
        child: Positioned(
            top: 10,
            left: 130,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(5)),
              height: 20,
              width: 40,
              child: const Center(
                  child: Text(
                'NEW',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
            )),
      )
    ]);
  }
}

class CustomBox extends StatelessWidget {
   Widget? first;
   Widget? second;
  final Color color;
   CustomBox({Key? key, this.first, this.second,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 90,
      child: DecoratedBox(
        child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              first!,
             const SizedBox(
                height: 6,
              ),
              second!,
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
