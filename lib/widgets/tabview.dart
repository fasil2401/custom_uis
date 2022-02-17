import 'package:flutter/material.dart';

class TabCustom extends StatelessWidget {
  const TabCustom({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBar(
              tabs: <Widget>[
                Tab( 
                  child: Text('Products',
                  style: TextStyle(
                    fontSize: 22
                  ),),
                ),
                Tab(
                  child: Text('Categories',
                  style: TextStyle(
                    fontSize: 22
                  ),),
                ),
                
              ],
            );
  }
}