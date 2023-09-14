import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
class AllCategoriesProducts extends StatefulWidget {
  const AllCategoriesProducts({super.key});

  @override
  State<AllCategoriesProducts> createState() => _AllCategoriesProductsState();
}

class _AllCategoriesProductsState extends State<AllCategoriesProducts> {

  List<String> countryList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA1t3PrDiOL4gIiLBZaaD7iYXyscMko0tcaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA1t3PrDiOL4gIiLBZaaD7iYXyscMko0tcaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA1t3PrDiOL4gIiLBZaaD7iYXyscMko0tcaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA1t3PrDiOL4gIiLBZaaD7iYXyscMko0tcaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA1t3PrDiOL4gIiLBZaaD7iYXyscMko0tcaA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA1t3PrDiOL4gIiLBZaaD7iYXyscMko0tcaA&usqp=CAU",
  ];
  int currentIndexPage=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 12,),

              Padding(
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
              SizedBox(height: 10,),
              new DotsIndicator(
                dotsCount: countryList.length,
                position: currentIndexPage,
                decorator: DotsDecorator(
                  color: Colors.grey, // Inactive color
                  activeColor: Colors.green,
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Container(
                    alignment: Alignment.topLeft,
                    child: Text('All Categories',style: TextStyle(fontSize: 20,color: Colors.green),)),
              ),
              SizedBox(height: 25,),

              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  primary: false,
                  itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Color(0xFFefefef),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.green,width: 3),
                    ),child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/image/coffe.png'),
                          Text('Coffee & Tea',style: TextStyle(fontSize: 18,color: Color(0xFFb7b7b7)),),
                        ],
                      ),
                    ),

                  ),
                );
              }),





            ],
          ),
        ),
      ),
    );
  }
}
