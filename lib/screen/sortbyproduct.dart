import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../style/style.dart';
class SortByProducts extends StatefulWidget {
  const SortByProducts({super.key});

  @override
  State<SortByProducts> createState() => _SortByProductsState();
}

class _SortByProductsState extends State<SortByProducts> {

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


   String selectedValue='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Expanded(
                      flex: 2,
                      child: Dropdownbutton(
                        DropdownButton(
                          value: selectedValue,
                          items: [
                            const DropdownMenuItem(child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Sort by Product"),
                            ),value: '',),
                            const DropdownMenuItem(child: Text("1 pcs"),value: '1 pcs',),
                            const DropdownMenuItem(child: Text("2 pcs"),value: '2 pcs',),
                            const DropdownMenuItem(child: Text("3 pcs"),value: '3 pcs',),
                            const DropdownMenuItem(child: Text("4 pcs"),value: '4 pcs',),
                            const DropdownMenuItem(child: Text("5 pcs"),value: '5 pcs',),
                            const DropdownMenuItem(child: Text("6 pcs"),value: '6 pcs',),


                          ], onChanged: (String? value){
                          // setState(() {
                          //   selectedValue = value!;
                          // });
                          // inputonchange('Qty', Textvalue);
                        },
                          isExpanded: true,
                          underline: Container(),
                        ),

                      ),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Dropdownbutton(
                        DropdownButton(
                          value: selectedValue,
                          items: [
                            const DropdownMenuItem(child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text("Apply Filter"),
                            ),value: '',),
                            const DropdownMenuItem(child: Text("1 pcs"),value: '1 pcs',),
                            const DropdownMenuItem(child: Text("2 pcs"),value: '2 pcs',),
                            const DropdownMenuItem(child: Text("3 pcs"),value: '3 pcs',),
                            const DropdownMenuItem(child: Text("4 pcs"),value: '4 pcs',),
                            const DropdownMenuItem(child: Text("5 pcs"),value: '5 pcs',),
                            const DropdownMenuItem(child: Text("6 pcs"),value: '6 pcs',),


                          ], onChanged: (String? value){
                          // setState(() {
                          //   selectedValue = value!;
                          // });
                          // inputonchange('Qty', Textvalue);
                        },
                          isExpanded: true,
                          underline: Container(),
                        ),

                      ),
                    ),
                  ],
                ),

                SizedBox(height: 50,),
                GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: item.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      mainAxisExtent: 200,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2),

                  itemBuilder: (context,index){
                    return Card(
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
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset(item[index],
                                height: 120,
                              ),
                            ),
                            Text('Bangladesh',style: TextStyle(fontSize: 23,color:Colors.green),),
                            SizedBox(height: 6,),
                            Container(
                              alignment: Alignment.center,
                              height: 20,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text('15 % off',style: TextStyle(fontSize: 10,color: Colors.white),),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('৳ 1190',style:TextStyle(fontSize: 16,color: Colors.green,),),
                                SizedBox(width: 6,),
                                Text('৳ 1190.00',style: TextStyle(fontSize: 12,color: Colors.grey,decoration:
                                TextDecoration.lineThrough,
                                ),),

                              ],
                            ),
                            SizedBox(height: 3,),
                            RatingBar.builder(
                              itemSize: 16,
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
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


              ],
            ),
          ),
        ),
      ),
    );
  }
}
