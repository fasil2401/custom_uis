import 'package:flutter/material.dart';

class BottomNavigateCustom extends StatefulWidget {
  const BottomNavigateCustom({ Key? key }) : super(key: key);

  @override
  State<BottomNavigateCustom> createState() => _BottomNavigateCustomState();
}

class _BottomNavigateCustomState extends State<BottomNavigateCustom> {
  int? _selectedIndex ;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items:const <BottomNavigationBarItem> [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark_add_rounded),label: 'Orders'),
        BottomNavigationBarItem(icon: Icon(Icons.add_box),label: 'Products'),
        BottomNavigationBarItem(icon: Icon(Icons.layers_outlined),label: 'Manage'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account'),
      ],
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
    
    );
  }
}