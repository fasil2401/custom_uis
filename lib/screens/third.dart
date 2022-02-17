import 'package:custom/widgets/button.dart';
import 'package:custom/widgets/cards.dart';
import 'package:custom/widgets/divider.dart';
import 'package:custom/widgets/list_ile.dart';
import 'package:custom/widgets/product_tile.dart';
import 'package:custom/widgets/text.dart';
import 'package:flutter/material.dart';

class Payments extends StatelessWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text(
          'Payments',
          style: TextStyle(fontSize: 22),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.info_outline_rounded))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        width: 0.8,
                        color: const Color.fromARGB(255, 168, 166, 166))),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadText(data: 'Transaction Limit'),
                      const SizedBox(
                        height: 8,
                      ),
                      ContentText(
                        data:
                            'A free limit upto which you will recieve \nthe online payment directory in your bank',
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const LinearProgressIndicator(
                        value: 0.5,
                        backgroundColor: Colors.grey,
                        minHeight: 5,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ContentText(data: '36,668 left out of ₹50,000'),
                      const SizedBox(
                        height: 20,
                      ),
                      ButtonCustom(
                          color: Colors.blue,
                          paddingh: 20,
                          paddingv: 8,
                          font: 22,
                          radius: 5,
                          text: 'Increse limit')
                    ],
                  ),
                ),
              ),
              const ListTuleCustomThird(
                  title: 'Default Method',
                  trailtext: 'Online Payment',
                  icon: Icons.arrow_forward_ios_rounded),
              const ListTuleCustomThird(
                  title: 'Payment Profile',
                  trailtext: 'Bank Account',
                  icon: Icons.arrow_forward_ios_rounded),
              const DividerCustom(),
              const ListTuleCustomThird(
                  title: 'Payments Overview',
                  trailtext: 'Life Time',
                  icon: Icons.arrow_drop_down_circle_rounded),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBox(
                      first: ContentText(
                          data: 'AMOUNT ON HOLD', color: Colors.white),
                      second: HeadText(
                        data: '₹0',
                        color: Colors.white,
                      ),
                      color: const Color.fromARGB(255, 218, 122, 33)),
                  CustomBox(
                      first: ContentText(
                          data: 'AMOUNT RECIEVED', color: Colors.white),
                      second: HeadText(
                        data: '₹13,332',
                        color: Colors.white,
                      ),
                      color: const Color.fromARGB(255, 59, 177, 78)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: HeadText(data: 'Transactions'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonCustom(
                    color: const Color.fromARGB(255, 209, 206, 206),
                    paddingh: 20,
                    paddingv: 5,
                    font: 20,
                    radius: 50,
                    text: 'On Hold',
                    textcolor: const Color.fromARGB(255, 99, 98, 98),
                  ),
                  ButtonCustom(
                    color: Colors.blue,
                    paddingh: 20,
                    paddingv: 5,
                    font: 20,
                    radius: 50,
                    text: 'Payouts(15)',
                    textcolor: Colors.white,
                  ),
                  ButtonCustom(
                    color: const Color.fromARGB(255, 209, 206, 206),
                    paddingh: 20,
                    paddingv: 5,
                    font: 20,
                    radius: 50,
                    text: 'Refunds',
                    textcolor: const Color.fromARGB(255, 99, 98, 98),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              
             const ProductTile(
                  orderid: '1688098',
                  month: 'jan',
                  price: '233.30',
                  imageurl:
                      'https://rukminim1.flixcart.com/image/800/960/kc9eufk0/sari/n/e/7/free-arohi-rudra-fashion-unstitched-original-imaftfgs2775ehe5.jpeg?q=50'),
                     const DividerCustom(),
                                  const ProductTile(
                  orderid: '1688025',
                  month: 'jul',
                  price: '799',
                  imageurl:
                      'https://rukminim1.flixcart.com/image/800/960/kyvvtzk0/shoe/1/p/8/8-5-cw3411-007nike-9-5-nike-cool-grey-hyper-crimson-lt-smoke-original-imagbyhgjzkjz9kg.jpeg?q=50'),
             const DividerCustom(),
             const ProductTile(
                  orderid: '1688032',
                  month: 'may',
                  price: '1000',
                  imageurl:
                      'https://rukminim1.flixcart.com/image/800/960/krjjde80/slipper-flip-flop/k/s/v/10-dd0234-400nike-nike-racer-blue-white-black-original-imag5b2y4f9qseqh.jpeg?q=50'),
             const DividerCustom(),
             const ProductTile(
                  orderid: '1688045',
                  month: 'jun',
                  price: '2500',
                  imageurl:
                      'https://rukminim1.flixcart.com/image/416/416/ku1k4280/smartwatch/t/i/a/android-ios-wrb-sw-colorfitqubeoxy-std-blk-blk-noise-no-original-imag79y4ar4hjbgb.jpeg?q=70'),
             const DividerCustom(),
             const ProductTile(
                  orderid: '1688055',
                  month: 'jan',
                  price: '1500',
                  imageurl:
                      'https://rukminim1.flixcart.com/image/800/960/kz3118w0/sari/1/p/y/free-sari-saree-fancy-embroidery-sadi-latest-new-designer-party-original-imagb6gh2utnc3xn.jpeg?q=50'),
             const DividerCustom(),
             const ProductTile(
                  orderid: '1688088',
                  month: 'feb',
                  price: '2650',
                  imageurl:
                      'https://rukminim1.flixcart.com/image/416/416/kjlrb0w0-0/headphone/n/k/9/air-buds-truly-wireless-noise-original-imafz4u28vvn68kp.jpeg?q=70'),

            ],
          ),
        ),
      ),
    );
  }
}
