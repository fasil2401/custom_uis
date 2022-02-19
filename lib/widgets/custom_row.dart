import 'package:flutter/material.dart';
import 'package:custom/widgets/text.dart';

class CustomRow extends StatelessWidget {
  final Widget title;
  final Widget tileend;
  IconData? icon;
  Color? iconcolor;
  double? iconsize;
  CustomRow(
      {Key? key,
      required this.title,
      required this.tileend,
      this.icon,
      this.iconcolor,
      this.iconsize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          title,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: iconsize,
                color: iconcolor,
              ),
              const SizedBox(
                width: 3,
              ),
              tileend,
            ],
          )
        ],
      ),
    );
  }
}

class CustomerRow extends StatelessWidget {
  const CustomerRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadText(data: 'Deepa'),
            const SizedBox(
              height: 8,
            ),
            OrderText(
              data: '+91-6533678954',
              color: Colors.grey,
            )
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.call,
              color: Colors.blue,
              size: 40,
            ),
            const SizedBox(
              width: 20,
            ),
            const Icon(
              Icons.message,
              color: Colors.green,
              size: 40,
            ),
          ],
        )
      ],
    );
  }
}

class AddressBlock extends StatelessWidget {
  const AddressBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadText(data: 'Address'),
          const SizedBox(
            height: 5,
          ),
          OrderText(data: 'D 1101 Chartered Beverly'),
          OrderText(data: 'Hills, Subramayapura P.O'),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadText(data: 'City'),
                  const SizedBox(
                    height: 8,
                  ),
                  OrderText(data: 'Bangalore')
                ],
              ),
              const SizedBox(
                width: 100,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadText(data: 'Pincode'),
                  const SizedBox(
                    height: 8,
                  ),
                  OrderText(data: '651252')
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class PaymentRow extends StatelessWidget {
  const PaymentRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [HeadText(data: 'Payment'), OrderText(data: 'Online')],
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 213, 240, 214),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: OrderText(
                  data: 'PAID',
                  color: Colors.green,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

class PremiumRow extends StatelessWidget {
  final IconData icon;
  final String one;
  final String two;
  const PremiumRow(
      {Key? key, required this.icon, required this.one, required this.two})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 2, color: Colors.blue)),
          child: Icon(
            icon,
            size: 30,
            color: Colors.blue,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OrderText(data: one),
              ContentText(
                data: two,
                color: Colors.grey,
              )
            ],
          ),
        )
      ],
    );
  }
}

class CustomStack extends StatelessWidget {
  const CustomStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18), color: Colors.grey),
          child: FittedBox(
            fit: BoxFit.cover,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.network(
                  'https://images.livemint.com/img/2021/06/18/600x338/p_(3)_1624019979294_1624019988675.jpg'),
            ),
          ),
        ),
        Positioned(
            top: 80,
            left: 130,
            child: Container(
              height: 40,
              width: 100,
              child: FittedBox(
                fit: BoxFit.cover,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                      'https://i.pinimg.com/originals/de/1c/91/de1c91788be0d791135736995109272a.png'),
                ),
              ),
            )),
      ],
    );
  }
}

class FaqRow extends StatelessWidget {
  final String data;
  final IconData icon;
  const FaqRow({Key? key, required this.data, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            data,
            style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
          ),
          Icon(
            icon,
            size: 35,
          )
        ],
      ),
    );
  }
}

class HelpPremiumRow extends StatelessWidget {
  const HelpPremiumRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 50),
            child: Column(
              children: [
                Icon(Icons.message_rounded,
                    size: 50, color: Color.fromARGB(255, 114, 112, 112)),
                SizedBox(
                  height: 8,
                ),
                OrderText(
                  data: 'Live Chat',
                  color: Color.fromARGB(255, 114, 112, 112),
                )
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 48),
            child: Column(
              children: [
                Icon(Icons.call,
                    size: 50, color: Color.fromARGB(255, 114, 112, 112)),
                SizedBox(
                  height: 8,
                ),
                OrderText(
                  data: 'Phone Call',
                  color: Color.fromARGB(255, 114, 112, 112),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
