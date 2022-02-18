import 'package:custom/screens/fourth.dart';
import 'package:custom/widgets/catalogue_custom.dart';
import 'package:custom/widgets/divider.dart';
import 'package:flutter/material.dart';

class Catalogue extends StatefulWidget {
  const Catalogue({Key? key}) : super(key: key);

  @override
  State<Catalogue> createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor:const Color.fromARGB(255, 236, 235, 235),
        appBar: AppBar(
          title: const Text(
            'Catalogue',
            style: TextStyle(fontSize: 22),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>Sample2()));
            }, icon: const Icon(Icons.search))
          ],
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Products',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              Tab(
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                CatalogueCustom(
                    productname: 'Kancheepuram | Women | Ethnic',
                    price: '1500',
                    imageurl:
                        'https://rukminim1.flixcart.com/image/800/960/kc9eufk0/sari/n/e/7/free-arohi-rudra-fashion-unstitched-original-imaftfgs2775ehe5.jpeg?q=50'),
               const SizedBox(height: 8,),
                CatalogueCustom(
                    productname: 'Embroidered Bollywood Cotton Silk Saree  (Light Blue)',
                    price: '585',
                    imageurl:
                        'https://rukminim1.flixcart.com/image/800/960/ke5zzbk0-0/sari/q/q/j/free-embroidery-saree-entaro-international-unstitched-original-imafuwkdh3fpeysj.jpeg?q=50'),
                const SizedBox(height: 8,),
                CatalogueCustom(
                    productname: 'Solid Fashion Lycra Blend Saree  (Purple)',
                    price: '1520',
                    imageurl:
                        'https://rukminim1.flixcart.com/image/800/960/knt7zbk0/sari/j/w/p/free-lycra-sarees-kitkina-unstitched-original-imag2eswekadcefs.jpeg?q=50'),
                const SizedBox(height: 8,),
                CatalogueCustom(
                    productname: 'Woven Kanjivaram Art Silk Saree  (Grey)',
                    price: '2200',
                    imageurl:
                        'https://rukminim1.flixcart.com/image/800/960/kn6cxow0/sari/e/y/6/free-grey-pink-con-bplash-fashion-unstitched-original-imagfx3fryjugxze.jpeg?q=50'),
                const SizedBox(height: 8,),
                CatalogueCustom(
                    productname: 'Digital Print Fashion Cotton Linen Blend Saree  (Pink)',
                    price: '1800',
                    imageurl:
                        'https://rukminim1.flixcart.com/image/800/960/kcgk1ow0/sari/t/p/r/free-digivihar-ashvmegh-unstitched-original-imaftkxzfw9z6zfc.jpeg?q=50'),
                const SizedBox(height: 8,),
                CatalogueCustom(
                    productname: 'Solid Daily Wear Poly Georgette Saree  (Grey)',
                    price: '1400',
                    imageurl:
                        'https://rukminim1.flixcart.com/image/800/960/k12go7k0/sari/p/h/c/free-bd030-bollydoll-designer-original-imafgjen5kwbudbm.jpeg?q=50'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
