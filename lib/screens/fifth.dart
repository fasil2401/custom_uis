import 'package:custom/widgets/catalogue_custom.dart';
import 'package:custom/widgets/custom_row.dart';
import 'package:custom/widgets/divider.dart';
import 'package:custom/widgets/text.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text(
          'Order #1688068',
          style: TextStyle(fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              CustomRow(
                title: OrderText(data: 'May 31, 05:42 PM'),
                tileend: OrderText(
                  data: 'Delivered',
                  color: Colors.grey,
                ),
                icon: Icons.circle,
                iconcolor: Colors.blue,
                iconsize: 20,
              ),
              const SizedBox(
                height: 10,
              ),
              const DividerCustom(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomRow(
                  title: OrderText(
                    data: '1 ITEM',
                    color: Colors.grey,
                  ),
                  tileend: OrderText(
                    data: 'RECIEPT',
                    color: Colors.blue,
                  ),
                  icon: Icons.receipt_outlined,
                  iconcolor: Colors.blue,
                  iconsize: 30,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const OrderBlock(),
              const SizedBox(
                height: 15,
              ),
              const DividerCustom(),
              const SizedBox(
                height: 15,
              ),
              CustomRow(
                  title: OrderText(data: 'Item Total'),
                  tileend: OrderText(
                    data: '₹799',
                  )),
              CustomRow(
                  title: OrderText(data: 'Delivery Charge'),
                  tileend: OrderText(
                    data: 'FREE',
                    color: Colors.green,
                  )),
              const SizedBox(
                height: 10,
              ),
              CustomRow(
                  title: HeadText(data: 'Grand Total'),
                  tileend: HeadText(data: '₹799')),
              const SizedBox(
                height: 15,
              ),
              const DividerCustom(),
              const SizedBox(
                height: 15,
              ),
              CustomRow(
                  title: OrderText(
                    data: 'CUSTOMER DETAILS',
                    color: Colors.grey,
                  ),
                  icon: Icons.share,
                  iconcolor: Colors.blue,
                  tileend: OrderText(
                    data: 'SHARE',
                    color: Colors.blue,
                  )),
              const SizedBox(
                height: 25,
              ),
              const CustomerRow(),
              const SizedBox(
                height: 25,
              ),
              const AddressBlock(),
              const SizedBox(
                height: 25,
              ),
              const PaymentRow(),
              const SizedBox(
                height: 15,
              ),
              const DividerCustom(),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OrderText(
                      data: 'ADDITIONAL INFORMATION',
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    HeadText(data: 'State'),
                    const SizedBox(
                      height: 8,
                    ),
                    OrderText(data: 'Karnataka'),
                    const SizedBox(
                      height: 25,
                    ),
                    HeadText(data: 'Email'),
                    const SizedBox(
                      height: 8,
                    ),
                    OrderText(data: 'greessm@gmail.com'),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                        child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.blue),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Center(
                            child: OrderText(
                          data: 'Share recipt',
                          color: Colors.blue,
                        )),
                      ),
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
