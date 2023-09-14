import 'package:flutter/material.dart';

import 'delivery_address.dart';
import 'edit_profile.dart';
class ProfileAccount extends StatelessWidget {
  const ProfileAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Profile',style: TextStyle(fontSize: 16,color: Colors.black87),),
                  SizedBox(height: 15,),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Stack(
                      clipBehavior: Clip.none,
                      //overflow: Overflow.visible,
                      fit: StackFit.expand,

                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black87,
                          radius: 70,
                          backgroundImage: AssetImage('assets/image/men.png',),
                        ),

                        Positioned(
                            bottom: 0,
                            right: -2,
                            top: 19,
                            child: SizedBox(
                                height: 10,
                                width: 10,
                                child: Icon(Icons.camera_alt)
                            ))
                      ],

                    ),
                  ),
                  SizedBox(height: 20,),
                  Text('Kayes Ahmeed',style: TextStyle(fontSize: 20,color: Colors.black87),),
                  SizedBox(height: 30,),
                  ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>EditProfile()));
                    },
                    leading: Icon(Icons.person),
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text('My Account',style: TextStyle(fontSize: 17,color: Colors.grey),),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.shopping_bag_outlined),
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text('My Order',style: TextStyle(fontSize: 17,color: Colors.grey),),
                  ),
                  Divider(),
                  ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>Delivery()));
                    },
                    leading: Icon(Icons.home),
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text('My Address',style: TextStyle(fontSize: 17,color: Colors.grey),),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.payments),
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text('Payment Method',style: TextStyle(fontSize: 17,color: Colors.grey),),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.favorite_border),
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text('My Wishlist',style: TextStyle(fontSize: 17,color: Colors.grey),),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.settings),
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text('Account Setting ',style: TextStyle(fontSize: 17,color: Colors.grey),),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.logout),
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text('Logout',style: TextStyle(fontSize: 17,color: Colors.grey),),
                  ),
                  Divider(),


                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}