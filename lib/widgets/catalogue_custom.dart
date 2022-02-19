import 'package:flutter/material.dart';
import 'package:custom/widgets/divider.dart';
import 'package:custom/widgets/text.dart';

class CatalogueCustom extends StatefulWidget {
  final String productname;
  final String price;
  final String imageurl;

  CatalogueCustom(
      {Key? key,
      required this.productname,
      required this.price,
      required this.imageurl})
      : super(key: key);

  @override
  State<CatalogueCustom> createState() => _CatalogueCustomState();
}

class _CatalogueCustomState extends State<CatalogueCustom> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                width: .7, color: const Color.fromARGB(255, 224, 224, 224)),
            borderRadius: BorderRadius.circular(10)),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 235, 234, 234)),
                      borderRadius: BorderRadius.circular(5)),
                  height: 120,
                  width: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: ClipRRect(
                        child: Image.network(widget.imageurl),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 180.0,
                            child: Text(
                              widget.productname,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 23.0),
                            ),
                          ),
                          const Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        '1 piece',
                        style: TextStyle(
                            color: Color.fromARGB(255, 92, 90, 90),
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        '₹${widget.price}',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 24, 24, 24),
                            fontWeight: FontWeight.w500,
                            fontSize: 20.0),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'in stock',
                            style: TextStyle(
                                color: Color.fromARGB(255, 13, 196, 44),
                                fontWeight: FontWeight.w400,
                                fontSize: 18.0),
                          ),
                          const SizedBox(
                            width: 95,
                          ),
                          Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const DividerCustom(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.share,
                    size: 18,
                    color: Color.fromARGB(255, 44, 44, 44),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    'Share Product',
                    style: TextStyle(
                        color: Color.fromARGB(255, 24, 24, 24),
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}

class OrderBlock extends StatelessWidget {
  const OrderBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: const Color.fromARGB(255, 235, 234, 234)),
                    borderRadius: BorderRadius.circular(5)),
                height: 100,
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: ClipRRect(
                      child: Image.network(
                          'https://rukminim1.flixcart.com/image/800/960/ke5zzbk0-0/sari/q/q/j/free-embroidery-saree-entaro-international-unstitched-original-imafuwkdh3fpeysj.jpeg?q=50'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 220.0,
                      child: Text(
                        'Explore Men | Navy ',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 23.0),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '1 piece',
                      style: TextStyle(
                          color: Color.fromARGB(255, 92, 90, 90),
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    OrderText(
                      data: 'Size: XL',
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.5, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(5),
                                  color:
                                      const Color.fromARGB(255, 223, 240, 253)),
                              child: Center(
                                child: OrderText(data: '1'),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            OrderText(
                              data: 'x ₹799',
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 95,
                        ),
                        OrderText(data: '₹799')
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
        ]));
  }
}
