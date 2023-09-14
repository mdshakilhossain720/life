import 'package:flutter/material.dart';

import 'all_categories_products.dart';
class CateGory extends StatefulWidget {
  const CateGory({super.key});

  @override
  State<CateGory> createState() => _CateGoryState();
}

class _CateGoryState extends State<CateGory> {
  List item=[
    'assets/image/freshwash.jpg',
    'assets/image/freshwash.jpg',
    'assets/image/freshwash.jpg',
    'assets/image/freshwash.jpg',
    'assets/image/freshwash.jpg',
    'assets/image/freshwash.jpg',
    'assets/image/freshwash.jpg',
    'assets/image/freshwash.jpg',
    'assets/image/freshwash.jpg',
    'assets/image/freshwash.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20,),
                TextFormField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    hintText: 'search for Product',
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ) ,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 50,),

                GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: item.length,

                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisExtent: 120,
                      mainAxisSpacing: 50),
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>AllCategoriesProducts()));

                      },
                      child: Container(
                          // height: 50,
                          // width: 160,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.green)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(child: Image.asset(item[index])),
                                const SizedBox(width: 10,),
                                const FittedBox(child: Text('Coffe & Tea',style: TextStyle(fontSize: 10,color: Colors.green),)),


                              ],
                            ),
                          )
                      ),
                    );
                  },

                ),





              ],
            ),
          ),
        ),
      ),
    );
  }
}
