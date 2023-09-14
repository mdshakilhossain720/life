
import 'package:flutter/material.dart';

BottomNavigationBar appBottomNavigator(currentindex,ontitemtab){
  return BottomNavigationBar(items: [
    BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.green,),label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded,color: Colors.green,),label: 'Category'),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.green,),label: 'Cart'),
    BottomNavigationBarItem(icon: Icon(Icons.add_card_outlined,color: Colors.green,),label: 'Order')

  ],
    showSelectedLabels: true,
    showUnselectedLabels: true,
    selectedItemColor: Colors.green,
    unselectedItemColor: Colors.green,
    currentIndex: currentindex,
    onTap: ontitemtab,
    type: BottomNavigationBarType.fixed,
  );

}




BottomNavigationBar appBottomNavigatorCart(currentindex,ontitemtab){
  return BottomNavigationBar(

    items: [
      BottomNavigationBarItem(icon: Container(

      )),

    BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded,color: Colors.green,),label: 'Category'),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.green,),label: 'Cart'),
    BottomNavigationBarItem(icon: Icon(Icons.add_card_outlined,color: Colors.green,),label: 'Order')

  ],
    backgroundColor: Colors.green,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    selectedItemColor: Colors.green,
    unselectedItemColor: Colors.green,
    currentIndex: currentindex,
    onTap: ontitemtab,
    type: BottomNavigationBarType.fixed,
  );

}