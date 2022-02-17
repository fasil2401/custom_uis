import 'package:custom/widgets/button.dart';
import 'package:custom/widgets/text.dart';
import 'package:flutter/material.dart';

class Payments extends StatelessWidget {
  const Payments({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
      leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title:const Text('Payments',
        style: TextStyle(
          fontSize: 22
        ),),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: (){},
          icon:const Icon(Icons.info_outline_rounded))
        ],   
    ),
    body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 0.8,color:Color.fromARGB(255, 168, 166, 166))
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const HeadText(data: 'Transaction Limit'),
                 const SizedBox(height: 8,),
                  ContentText(data: 'A free limit upto which you will recieve \nthe online payment directory in your bank'),
                  const SizedBox(height: 10,),
                 const LinearProgressIndicator(
                    value: 0.5,
                    backgroundColor: Colors.grey,
                    minHeight: 5,
                  ),
                  const SizedBox(height: 8,),
                  ContentText(data: '36,668 left out of ₹50,000'),
                  const SizedBox(height: 20,),
                 const ButtonCustom(color: Colors.blue, paddingh: 20, paddingv: 8, font: 22, radius: 5, text: 'Increse limit')

                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}