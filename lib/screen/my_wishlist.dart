import 'package:flutter/material.dart';
class MyWishlist extends StatefulWidget {
  const MyWishlist({super.key});

  @override
  State<MyWishlist> createState() => _MyWishlistState();
}

class _MyWishlistState extends State<MyWishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(

                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50,),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 80,),
                        Text('My Wishlist',style: TextStyle(fontSize: 20,color: Colors.black87,fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text('8 Item',style: TextStyle(fontSize: 15,color: Colors.blue),),
                      ],
                    ),
                  ),const SizedBox(height: 30,),

                  ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      primary: false,
                      itemCount: 8,
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                                color: Color(0xFFe9f4e4),

                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*.9,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.green),
                                  ),
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(child: Image.asset('assets/image/freshwash.jpg',fit: BoxFit.cover,)),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(height: 9,),
                                             const Text('Uol Originc GreenTea',style: TextStyle(fontSize: 15,color: Colors.green),),
                                            const SizedBox(height: 20,),
                                            const Text('Varilation',style: TextStyle(fontSize: 20,color: Colors.blue),),
                                            const SizedBox(height: 6,),
                                            Container(
                                              alignment: Alignment.center,
                                              height: 20,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Colors.green),
                                              ),
                                              child:const Text('80 GM',style:TextStyle(fontSize: 12,color: Colors.blue) ,),
                                            ),
                                            const SizedBox(height: 8,),
                                            const Text(' ৳ 1190.00',style: TextStyle(fontSize: 19,color: Colors.blue),),


                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(Icons.favorite_border),
                                            Row(children: [
                                              Icon(Icons.star,color: Colors.green,),
                                              Text('4.5',style: TextStyle(fontSize: 16,color: Colors.blue),),
                                            ],)

                                          ],
                                        ),
                                      )

                                    ],
                                  ),
                                ),


                              ],
                            ),

                          ),
                        );
                      }),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
