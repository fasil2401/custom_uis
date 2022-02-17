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
        backgroundColor: Color.fromARGB(255, 248, 248, 248),
        appBar: AppBar(
          title: const Text(
            'Catalogue',
            style: TextStyle(fontSize: 22),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
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
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              Container(
                
                  decoration: BoxDecoration(
                    
                      color: Colors.white,
                      border: Border.all(width: .7,color: Color.fromARGB(255, 224, 224, 224)),
                      borderRadius: BorderRadius.circular(10)),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Color.fromARGB(255, 235, 234, 234)),
                                borderRadius: BorderRadius.circular(5)),
                            height: 120,
                            width: 120,
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: ClipRRect(
                                  child: Image.network(
                                      'https://rukminim1.flixcart.com/image/800/960/kc9eufk0/sari/n/e/7/free-arohi-rudra-fashion-unstitched-original-imaftfgs2775ehe5.jpeg?q=50'),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      width: 180.0,
                                      child: Text(
                                        "Enter Long | Textgh fhj gjkhklj;ljl;j",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: false,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 25.0),
                                      ),
                                    ),
                                    Icon(Icons.more_vert),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '1 piece',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 92, 90, 90),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18.0),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '₹799',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 24, 24, 24),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22.0),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'in stock',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 13, 196, 44),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18.0),
                                    ),
                                    SizedBox(
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
                      SizedBox(height: 5,),
                      DividerCustom(),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.share,
                            color: Color.fromARGB(255, 44, 44, 44),),
                            SizedBox(width: 8,),
                            Text(
                                  'Share Product',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 24, 24, 24),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 22.0),
                                ),

                          ],
                        ),
                      )
                    ]
                    ),
                  )
                  )
            ],
          ),
        ),
      ),
    );
  }
}
