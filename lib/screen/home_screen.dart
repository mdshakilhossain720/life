import 'package:flutter/material.dart';

import 'Category.dart';
import 'bottomnavbar.dart';
import 'cart.dart';
import 'homebottomnav.dart';
import 'orders.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bottomtabindex=0;
  ontitemtab(int index){
    setState(() {
      bottomtabindex=index;
    });

  }

  final WidgetOptions=[
    HomeBottomNav(),
    CateGory(),
    Cart(),
    Orders(),

  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:WidgetOptions.elementAt(bottomtabindex) ,
      bottomNavigationBar: appBottomNavigator(bottomtabindex,ontitemtab),


    );
  }
}
