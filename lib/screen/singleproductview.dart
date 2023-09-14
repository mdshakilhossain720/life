import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
class SingleProduct extends StatefulWidget {
  const SingleProduct({super.key});

  @override
  State<SingleProduct> createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  int currentIndexPage=0;

  List<String> countryList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA1t3PrDiOL4gIiLBZaaD7iYXyscMko0tcaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA1t3PrDiOL4gIiLBZaaD7iYXyscMko0tcaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA1t3PrDiOL4gIiLBZaaD7iYXyscMko0tcaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA1t3PrDiOL4gIiLBZaaD7iYXyscMko0tcaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA1t3PrDiOL4gIiLBZaaD7iYXyscMko0tcaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA1t3PrDiOL4gIiLBZaaD7iYXyscMko0tcaA&usqp=CAU",
  ];

  List<String>item=[
    "Home",
    "Search",
    " Feed",
    "Search",
  ];

  int current =0;





  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                 SizedBox(height: 100,),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green,width: 2),
                    ),
                    height: 250,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CarouselSlider(
                        options: CarouselOptions(
                          aspectRatio: 1 / 1,
                          viewportFraction: 1,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                        ),
                        items: countryList.map((countryLis) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image: NetworkImage(
                                      countryLis,
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                SizedBox(height: 10,),
                new DotsIndicator(
              dotsCount: countryList.length,
              position: currentIndexPage,
              decorator: DotsDecorator(
                color: Colors.grey, // Inactive color
                activeColor: Colors.green,
              ),
          ),
                  SizedBox(height: 20,),
                  const Text('UOL Organic Green Tea',style: TextStyle(fontSize: 23,color: Colors.green),),
                 SizedBox(height: 8,),
              Container(
                alignment: Alignment.center,
                   height: 20,
                   width: 60,
                   decoration: BoxDecoration(
                     color: Colors.green,
                     borderRadius: BorderRadius.circular(12),

                   ),
                child: Text('15 % off',style: TextStyle(fontSize: 13,color: Colors.white),),
                 ),
                  const SizedBox(height: 10,),
              const Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('৳ 1190',style:TextStyle(fontSize: 20,color: Colors.green,),),
                     SizedBox(width: 6,),
                     Text('৳ 1190.00',style: TextStyle(fontSize: 12,color: Colors.grey,decoration:
                     TextDecoration.lineThrough,
                     ),),

                   ],
                 ),
                 const SizedBox(height: 4,),



                 SizedBox(height: 20,),


                  // Container(
                  //   height: 65,
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //     color: Colors.grey,
                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   child: TabBar(
                  //       indicator: BoxDecoration(
                  //         color: Colors.green,
                  //         borderRadius: BorderRadius.circular(20),
                  //       ),
                  //       unselectedLabelColor: Colors.black87,
                  //       labelColor: Colors.white,
                  //
                  //
                  //       tabs: [
                  //         Tab(text: 'Descriptions',),
                  //         Tab(text: 'How to use',),
                  //         Tab(text: 'Ingredent',),
                  //         Tab(text: 'Quantity',),
                  //         Tab(text: 'Quantity',),
                  //       ]),
                  // ),
                  // Expanded(
                  //   child: TabBarView(children: [
                  //     Column(
                  //       children: [
                  //        Text(' UOL Original Green Tea',style: TextStyle(fontSize: 15,color: Colors.green),),
                  //         Text('Bangladesh is beautiful country',style: TextStyle(fontSize: 12,color: Colors.grey),),
                  //
                  //       ],
                  //     ),
                  //     Text('hel'),
                  //     Text('heo'),
                  //     Text('hlo'),
                  //     Text('elo'),
                  //
                  //   ]),
                  // )









                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            //SizedBox(width: 3,),


                            Expanded(
                              child: FloatingActionButton.extended(
                                elevation: 0,
                                backgroundColor: Colors.transparent,
                                onPressed: () {

                                },
                                label: const Text('Wishlist'),
                                icon: const Icon(Icons.favorite),
                              ),
                            ),
                            Expanded(
                              child: FloatingActionButton.extended(
                                elevation: 0,
                                backgroundColor: Colors.transparent,
                                onPressed: () {
                                  Get.defaultDialog(title: 'Product Successfully\n add to cart',
                                      contentPadding: EdgeInsets.all(10),
                                      content: Column(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: 25,
                                            decoration: BoxDecoration(
                                                color: Colors.green
                                              //border: Border.all(color: Colors.green),
                                            ),
                                            child: Text('Go To CheekOut',style: TextStyle(fontSize: 13,color: Colors.white),),
                                          ),
                                          SizedBox(height: 12,),
                                          Container(
                                            alignment: Alignment.center,
                                            height: 25,
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Colors.green),
                                            ),
                                            child: Text('Go To CheekOut',style: TextStyle(fontSize: 13,color: Colors.green),),
                                          ),
                                        ],
                                      )

                                  );
                                },

                                label: const Text('Add to Cart'),
                                icon: const Icon(Icons.add_shopping_cart),
                              ),
                            ),



                            FloatingActionButton.extended(
                              elevation: 0,
                              backgroundColor: Colors.transparent,
                              onPressed: () {

                              },
                              label: const Text('Share'),
                              icon: const Icon(Icons.share),
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),















                ],
              ),
            ),
          ),


      );
  }
}
