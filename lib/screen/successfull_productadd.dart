import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bottomnavbar.dart';
class AddTo extends StatefulWidget {
  const AddTo({super.key});

  @override
  State<AddTo> createState() => _AddToState();
}

class _AddToState extends State<AddTo> {

  int currentIndexPage=0;

  List<String> countryList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA1t3PrDiOL4gIiLBZaaD7iYXyscMko0tcaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA1t3PrDiOL4gIiLBZaaD7iYXyscMko0tcaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA1t3PrDiOL4gIiLBZaaD7iYXyscMko0tcaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA1t3PrDiOL4gIiLBZaaD7iYXyscMko0tcaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA1t3PrDiOL4gIiLBZaaD7iYXyscMko0tcaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA1t3PrDiOL4gIiLBZaaD7iYXyscMko0tcaA&usqp=CAU",
  ];
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(



      
      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(
      //     color: Colors.green,
      //     borderRadius: BorderRadius.circular(25),
      //   ),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Column(
      //         children: [
      //           Text('Total Price',style: TextStyle(fontSize: 14,color: Colors.black87),),
      //           SizedBox(height: 6,),
      //           Text('2990.00',style: TextStyle(fontSize: 20,color: Colors.white),),
      //
      //         ],
      //       ),
      //       Container(
      //         height: 20,
      //         width: 50,
      //         decoration: BoxDecoration(
      //         color: Colors.green,
      //         borderRadius: BorderRadius.circular(25),
      //       ),),
      //     ],
      //   ),
      // ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Align(
              alignment: Alignment.center,
              child: Container(
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
            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.center,
              child: new DotsIndicator(
                dotsCount: countryList.length,
                position: currentIndexPage,
                decorator: DotsDecorator(
                  color: Colors.grey, // Inactive color
                  activeColor: Colors.green,
                ),
              ),
            ),
            SizedBox(height: 6,),
            Divider(color: Colors.grey,
              height: 2,thickness: 3,
            ),
            SizedBox(height: 40,),
            Text('UOL Original Green Tea',style: TextStyle(fontSize: 20,color: Colors.green),),
            SizedBox(height: 6,),
            Text('1190',style: TextStyle(fontSize: 22,color: Colors.blue),),
            SizedBox(height: 6,),
            Flexible(
              child: Text('Bangladesh is very nice courntydnfuiehgfuejFIJF8IHGUJNSJIDFHQU9Fheiowfjewu  fcsj8dqru',
                style: TextStyle(fontSize: 15,color: Colors.grey,),),
            ),
            SizedBox(height: 20,),
            Text('Validation',style: TextStyle(fontSize: 19,color: Colors.blue)),
            SizedBox(height: 6,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 25,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),

                  ),
                  child: Text('80 GM',style: TextStyle(fontSize: 14,color: Colors.black87),),
                ),
                SizedBox(width: 8,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 15,width: 20,
                        decoration: const BoxDecoration(color: Colors.green),
                        child: const Text("-",style: TextStyle(fontSize: 18,color: Colors.white),),
                      ),
                      const SizedBox(width: 9,),
                      const Text('0'),
                      const SizedBox(width: 9,),
                      Container(
                        alignment: Alignment.center,
                        height: 15,width: 20,
                        decoration: const BoxDecoration(color: Colors.green),
                        child: const Text("+",style: TextStyle(fontSize: 18,color: Colors.white),),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 8,),
            Text('Avlabilty : 185 Product ',style: TextStyle(fontSize: 18,color: Colors.blue),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(onPressed: (){
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

                },style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ), child: Text('Add to Card')),
                SizedBox(width: 10,),
                Icon(Icons.favorite,color: Colors.grey,),
                SizedBox(width: 10,),
                Icon(Icons.share,size: 30,color: Colors.green,),
              ],
            )



          ],
        ),
      ),
    );
  }
}