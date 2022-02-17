import 'package:custom/screens/first.dart';
import 'package:custom/widgets/bottom_navigation.dart';
import 'package:custom/widgets/cards.dart';
import 'package:flutter/material.dart';

class ManageStore extends StatelessWidget {
  const ManageStore({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const Color.fromARGB(255, 230, 227, 227),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>AdditionalInformation()));
          },
        ),
        title: const Text('Manage Store',
        style: TextStyle(
          fontSize: 22
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView(
          gridDelegate:const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisExtent: 135,
            mainAxisSpacing: 10,
            crossAxisSpacing: 15

          ),
          children: [
             CardsCustom(icon: Icons.speaker_phone, text1: 'Marketing', text2: 'Designs',color:const Color.fromARGB(255, 252, 167, 56), banner: false,),
             CardsCustom(icon: Icons.credit_card, text1: 'Online', text2: 'Payments', color:const Color.fromARGB(255, 12, 228, 123), banner: false,),
             CardsCustom(icon: Icons.disc_full, text1: 'Discount', text2: 'Coupons', color:const Color.fromARGB(255, 221, 167, 87), banner: false,),
             CardsCustom(icon: Icons.person, text1: 'My', text2: 'Customers', color:const Color.fromARGB(255, 87, 161, 221), banner: false,),
             CardsCustom(icon: Icons.qr_code, text1: 'Store QR', text2: 'Code', color:const Color.fromARGB(255, 99, 104, 109), banner: false,),
             CardsCustom(icon: Icons.money, text1: 'Extra', text2: 'Charges', color:const Color.fromARGB(255, 69, 82, 139), banner: false,),
             CardsCustom(icon: Icons.menu, text1: 'Order', text2: 'Form', color:const Color.fromARGB(255, 161, 40, 141), banner: true,),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigateCustom(),
    );
  }
}