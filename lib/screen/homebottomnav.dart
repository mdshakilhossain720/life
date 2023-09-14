import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:newultimatelife/screen/sortbyproduct.dart';

import 'Category.dart';
import 'coffetea.dart';
import 'my_order.dart';
import 'my_wishlist.dart';
import 'privace_policy.dart';
import 'singleproductview.dart';
import 'termandcondition.dart';
import 'userprofileaccount.dart';
class HomeBottomNav extends StatefulWidget {
  const HomeBottomNav({super.key});

  @override
  State<HomeBottomNav> createState() => _HomeBottomNavState();
}

class _HomeBottomNavState extends State<HomeBottomNav> {

  List item=[
    'assets/image/coffe.png',
    'assets/image/coffe.png',
    'assets/image/coffe.png',
    'assets/image/coffe.png',
    'assets/image/coffe.png',
    'assets/image/coffe.png',
    'assets/image/coffe.png',
    'assets/image/coffe.png',
  ];

  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;

    return Scaffold(
        drawer: SafeArea(

        child: Container(
          color: Colors.black87,
          child: Drawer(
          backgroundColor: Colors.green,
          child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.symmetric(horizontal: 15),
    children: [
    ListTile(
    onTap: (){},
    title: const Text('CLEARANCE SALE',style: TextStyle(fontSize: 14,color: Colors.white),),

    ),

    ListTile(
    onTap: (){},
    title: const Text('ULTIMATE OPGANIC LIFE OUTLET',style: TextStyle(fontSize: 14,color: Colors.white),),

    ),

    ListTile(
    onTap: (){},
    title: const Text('BRANDS',style: TextStyle(fontSize: 14,color: Colors.white),),

    ),

    ListTile(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (_)=>const CateGory()));

    },
    title: const Text('CATEGORY',style: TextStyle(fontSize: 14,color: Colors.white),),

    ),

    ListTile(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (_)=>const CofeTea()));

    },
    trailing: const Icon(Icons.add,color: Colors.white,),
    title: const Text('COFFEE & TEA',style: TextStyle(fontSize: 14,color: Colors.white),),

    ),

    ListTile(
    onTap: (){},
    trailing: const Icon(Icons.add,color: Colors.white,),
    title: const Text('NUTS & SEEDS',style: TextStyle(fontSize: 14,color: Colors.white),),

    ),

    ListTile(
    onTap: (){},
    trailing: const Icon(Icons.add,color: Colors.white,),
    title: const Text('OIL',style: TextStyle(fontSize: 14,color: Colors.white),),

    ),

    ListTile(
    onTap: (){},
    trailing: const Icon(Icons.add,color: Colors.white,),
    title: const Text('OTHERS',style: TextStyle(fontSize: 14,color: Colors.white),),

    ),
    ListTile(
    onTap: (){},
    trailing: const Icon(Icons.add,color: Colors.white,),
    title: const Text('SALT',style: TextStyle(fontSize: 14,color: Colors.white),),

    ),
    ListTile(
    onTap: (){},
    trailing: const Icon(Icons.add,color: Colors.white,),
    title: const Text('SUPER FOOD',style: TextStyle(fontSize: 14,color: Colors.white),),

    ),
    ListTile(
    onTap: (){},
    trailing: const Icon(Icons.add,color: Colors.white,),
    title: const Text('SUPPLIMET',style: TextStyle(fontSize: 14,color: Colors.white),),

    ),
    ListTile(
    onTap: (){},
    trailing: const Icon(Icons.add,color: Colors.white,),
    title: const Text('VINEGEAR WITH MOTHER',style: TextStyle(fontSize: 14,color: Colors.white),),

    ),
    ListTile(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (_)=>const MyWishlist()));

    },

    title: const Text('MY WISHLIST',style: TextStyle(fontSize: 14,color: Colors.white),),

    ),
    ListTile(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (_)=>const MyOrders()));

    },

    title: const Text('MY ORDERS',style: TextStyle(fontSize: 14,color: Colors.white),),

    ),
    ListTile(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (_)=>const TermConditions()));

    },

    title: const Text('TERMS & CONDITIONS',style: TextStyle(fontSize: 14,color: Colors.white),),

    ),
    ListTile(
    onTap: (){},
    title: const Text('RERURN & REFUND POLICY',style: TextStyle(fontSize: 14,color: Colors.white),),

    ),ListTile(
    onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (_)=>const PrivaceyPolicy()));

    },
    title: const Text('PRIVACY POLICY',style: TextStyle(fontSize: 14,color: Colors.white),),

    ),
    ListTile(
    onTap: (){


    },
    title: const Text('SHIPPING & DELIVERY',style: TextStyle(fontSize: 14,color: Colors.white),),

    ),




    ],
    ),
    ),
        ),
    ),
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset('assets/image/logo.jpeg',fit: BoxFit.cover,width: width*.2,height: height*.1,),

        centerTitle: true,
        // leading: IconButton(onPressed: (){
        //   Navigator.push(context, MaterialPageRoute(builder: (_)=>Navigation()));
        //
        // }, icon: Icon(Icons.menu,color: Colors.green,)),

        actions: [

          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const ProfileAccount()));
            },
            child: const CircleAvatar(

              backgroundImage: AssetImage('assets/image/men.png',),
            ),
          ),
          const SizedBox(width: 10,),
        ],

      ),

         body: SingleChildScrollView(
           child: Padding(
             padding: const EdgeInsets.all(10.0),
             child: Column(
               children: [
                 const SizedBox(height: 12,),

                 CarouselSlider(
                     items: [
                      Image.asset('assets/image/sliderone.png'),
                       Image.asset('assets/image/slidertwo.jpg'),

                     ],
                     options: CarouselOptions(
                       height: 90,
                       aspectRatio: MediaQuery.of(context).size.width,
                      // viewportFraction: 0.8,

                       initialPage: 0,
                       enableInfiniteScroll: true,
                       reverse: false,
                       autoPlay: true,
                       autoPlayInterval: const Duration(seconds: 3),
                       autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      // autoPlayCurve: Curves.fastOutSlowIn,
                       enlargeCenterPage: true,
                       enlargeFactor: 0.3,

                       scrollDirection: Axis.horizontal,
                     )
                 ),













                 const SizedBox(height: 25,),

                 GridView.builder(
                   shrinkWrap: true,
                   primary: false,
                   itemCount: item.length,

                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,crossAxisSpacing: 10,
                       mainAxisSpacing: 10),
                   itemBuilder: (context,index){
                     return InkWell(
                       onTap: (){},
                       child: Container(
                         height: 100,
                         width: 50,
                         decoration: BoxDecoration(
                             border: Border.all(color: Colors.green)
                         ),
                         child: Column(
                           children: [
                             Expanded(child: Image.asset(item[index])),
                             const Text('Coffe & Tea',style: TextStyle(fontSize: 12),),
                           ],
                         ),
                       ),
                     );
                   },

                 ),
                 const SizedBox(height: 25,),
                 const Text('Popular Products',style: TextStyle(fontSize: 30,color: Colors.green),),
                 const SizedBox(height: 20,),

                 GridView.builder(
                   shrinkWrap: true,
                   primary: false,
                   itemCount: item.length,
                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                       mainAxisSpacing: 10,
                       mainAxisExtent: 200,
                       crossAxisSpacing: 10,
                       crossAxisCount: 2),

                   itemBuilder: (context,index){
                     return InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)=>const SortByProducts()));
                       },
                       child: Card(
                         // height: 300,
                         // width: 180,
                         // decoration: BoxDecoration(
                         //     color: Colors.white,
                         //     borderRadius: BorderRadius.circular(5),
                         //     boxShadow: [
                         //       BoxShadow(
                         //         color: Colors.grey.withOpacity(0.5),
                         //         spreadRadius: 1,
                         //         blurRadius: 2,
                         //         offset: Offset(0, 3),
                         //
                         //       )
                         //     ]
                         // ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Expanded(
                               child: Image.asset(item[index],
                                 height: 120,
                               ),
                             ),
                             const SizedBox(height: 7,),
                             const Text('Bangladesh',style: TextStyle(fontSize: 23,color:Colors.green),),
                             const SizedBox(height: 6,),
                             Container(
                               alignment: Alignment.center,
                               height: 20,
                               width: 60,
                               decoration: BoxDecoration(
                                 color: Colors.green,
                                 borderRadius: BorderRadius.circular(20),
                               ),
                               child: const Text('15 % off',style: TextStyle(fontSize: 10,color: Colors.white),),
                             ),
                             const Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Text('৳ 1190',style:TextStyle(fontSize: 16,color: Colors.green,),),
                                 SizedBox(width: 6,),
                                 Text('৳ 1190.00',style: TextStyle(fontSize: 12,color: Colors.grey,decoration:
                                 TextDecoration.lineThrough,
                                 ),),

                               ],
                             ),
                             const SizedBox(height: 3,),
                             RatingBar.builder(
                               itemSize: 16,
                               initialRating: 3,
                               minRating: 1,
                               direction: Axis.horizontal,
                               allowHalfRating: true,
                               itemCount: 5,
                               itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                               itemBuilder: (context, _) => const Icon(
                                 Icons.star,
                                 color: Colors.green,
                               ),
                               onRatingUpdate: (rating) {
                                 print(rating);
                               },
                             ),


                           ],
                         ),

                       ),
                     );
                   },),
                 const SizedBox(height: 20,),
                 const Text('Daily Beest Sales',style: TextStyle(fontSize: 23,color: Colors.green),),
                const SizedBox(height: 25,),
                 GridView.builder(
                   shrinkWrap: true,
                   primary: false,
                   itemCount: item.length,
                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                       mainAxisSpacing: 10,
                       mainAxisExtent: 200,
                       crossAxisSpacing: 10,
                       crossAxisCount: 2),

                   itemBuilder: (context,index){
                     return InkWell(
                       onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (_)=>const SingleProduct()));

                       },
                       child: Card(
                         // height: 300,
                         // width: 180,
                         // decoration: BoxDecoration(
                         //     color: Colors.white,
                         //     borderRadius: BorderRadius.circular(5),
                         //     boxShadow: [
                         //       BoxShadow(
                         //         color: Colors.grey.withOpacity(0.5),
                         //         spreadRadius: 1,
                         //         blurRadius: 2,
                         //         offset: Offset(0, 3),
                         //
                         //       )
                         //     ]
                         // ),
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 10),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Expanded(
                                 child: Image.asset(item[index],
                                   height: 120,
                                 ),
                               ),
                               const SizedBox(height: 7,),
                               const Text('Bangladesh',style: TextStyle(fontSize: 23,color:Colors.green),),
                               const SizedBox(height: 6,),
                               Container(
                                 alignment: Alignment.center,
                                 height: 20,
                                 width: 60,
                                 decoration: BoxDecoration(
                                   color: Colors.green,
                                   borderRadius: BorderRadius.circular(20),
                                 ),
                                 child: const Text('15 % off',style: TextStyle(fontSize: 10,color: Colors.white),),
                               ),
                               const Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Text('৳ 1190',style:TextStyle(fontSize: 16,color: Colors.green,),),
                                   SizedBox(width: 6,),
                                   Text('৳ 1190.00',style: TextStyle(fontSize: 12,color: Colors.grey,decoration:
                                   TextDecoration.lineThrough,
                                   ),),

                                 ],
                               ),
                               const SizedBox(height: 3,),
                               RatingBar.builder(
                                 itemSize: 16,
                                 initialRating: 3,
                                 minRating: 1,
                                 direction: Axis.horizontal,
                                 allowHalfRating: true,
                                 itemCount: 5,
                                 itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                                 itemBuilder: (context, _) => const Icon(
                                   Icons.star,
                                   color: Colors.green,
                                 ),
                                 onRatingUpdate: (rating) {
                                   print(rating);
                                 },
                               ),


                             ],
                           ),

                         ),

                       ),
                     );
                   },),


               ],
             ),
           ),
         ),



    );
  }
}
