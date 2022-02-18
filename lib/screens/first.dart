import 'package:custom/screens/second.dart';
import 'package:custom/widgets/list_ile.dart';
import 'package:flutter/material.dart';

class AdditionalInformation extends StatefulWidget {
const AdditionalInformation({Key? key}) : super(key: key);

  @override
  State<AdditionalInformation> createState() => _AdditionalInformationState();
}

class _AdditionalInformationState extends State<AdditionalInformation> {
bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>ManageStore()));
          },
        ),
        title: const Text('Additional Information',
        style: TextStyle(
          fontSize: 22
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ListView(
          children: <Widget>[
           const ListTileCustom(
              text: 'Share Dukaan App',
              iconstart: Icons.share,
              iconend: Icon(Icons.arrow_forward_ios, size: 20,),
            ),
          const  ListTileCustom(
              text: 'Change Language',
              iconstart: Icons.mode_comment_outlined,
              iconend: Icon(Icons.arrow_forward_ios, size: 20,),
            ),
            ListTileCustom(
              text: 'WhatsApp Chat Support',
              iconstart: Icons.whatshot,
              iconend: Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            ),
            const ListTileCustom(
              text: 'Privacy Policy',
              iconstart: Icons.lock_clock_outlined
            ),
            const ListTileCustom(
              text: 'Rate Us',
              iconstart: Icons.star_outline_outlined
            ),
            const ListTileCustom(
              text: 'Sign Out',
              iconstart: Icons.logout
            ),
          ],
        ),
      ),
    );
  }
}
