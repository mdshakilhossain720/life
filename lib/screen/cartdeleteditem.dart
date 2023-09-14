import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CartDeletedtem extends StatefulWidget {
  const CartDeletedtem({super.key});

  @override
  State<CartDeletedtem> createState() => _CartDeletedtemState();
}

class _CartDeletedtemState extends State<CartDeletedtem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add,),label: 'Total Prices\n 2990.00'),

          BottomNavigationBarItem(icon: Icon(Icons.add,),label: 'CheeckOut',),
        ],
        showSelectedLabels: true,
        showUnselectedLabels: true,
       // selectedItemColor: Colors.green,
       // unselectedItemColor: Colors.green,
        //currentIndex: currentindex,
        // onTap: ontitemtab,
        type: BottomNavigationBarType.fixed,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(height: 20,),

                TextFormField(

                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    hintText: 'search ',
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

                const SizedBox(height: 20,),
                const Text('My Cart ',style: TextStyle(fontSize: 23,color: Colors.black87),),
                  const SizedBox(height: 25,),



                ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    primary: false,
                    itemBuilder: (context,index){
                      return  Padding(
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        child: Container(
                          height: 110,
                          width: MediaQuery.of(context).size.width,
                          color: const Color(0xFFe9f4e4),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 120,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.green)
                                  ),
                                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWDNb-sicr1XmHfSkXBWzLZRnbKe-L-2SLoxqPOa594w0ZI4b0yhU2AyVfzpDCTQjcoSI&usqp=CAU'),
                                ),const SizedBox(width: 8,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20,),
                                    const Text('Uol Origin Green Tea',style: TextStyle(fontSize: 16,color: Colors.green),),
                                    const SizedBox(height: 23,),
                                    RichText(
                                      text: const TextSpan(
                                        text: 'Varlation ',
                                        style: TextStyle(color: Colors.blue,fontSize: 15),
                                        children: <TextSpan>[
                                          TextSpan(text: '|', style: TextStyle(color: Colors.green)),
                                          TextSpan(text: ' 80 GM',style: TextStyle(fontSize: 18,color: Colors.black87)),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 7,),
                                    const Text('৳ 11190.00',style: TextStyle(fontSize: 15,color: Colors.green),),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    GestureDetector(
                                        onTap: (){
                                          Get.defaultDialog(
                                              titlePadding:EdgeInsets.all(8),
                                              title: 'Are You Sure to remove this item from cart?',
                                              contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                              content: Column(
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    height: 25,
                                                    decoration: BoxDecoration(

                                                      border: Border.all(color: Colors.green),
                                                    ),
                                                    child: Text('Delete',style: TextStyle(fontSize: 13,color: Colors.red),),
                                                  ),
                                                  SizedBox(height: 12,),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    height: 25,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(color: Colors.green),
                                                    ),
                                                    child: Text('Save for late',style: TextStyle(fontSize: 13,color: Colors.green),),
                                                  ),
                                                  SizedBox(height: 12,),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    height: 25,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(color: Colors.grey),
                                                    ),
                                                    child: Text('Cancel',style: TextStyle(fontSize: 13,color: Colors.grey),),
                                                  ),


                                                ],
                                              )
                                          );
                                        },
                                        child:  Icon(Icons.delete,color: Colors.grey,size: 30,)),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: 15,width: 20,
                                            decoration: const BoxDecoration(color: Colors.green),
                                            child: const Text("-",style: TextStyle(fontSize: 15,color: Colors.white),),
                                          ),
                                          const SizedBox(width: 9,),
                                          const Text('0'),
                                          const SizedBox(width: 9,),
                                          Container(
                                            alignment: Alignment.center,
                                            height: 15,width: 20,
                                            decoration: const BoxDecoration(color: Colors.green),
                                            child: const Text("+",style: TextStyle(fontSize: 15,color: Colors.white),),
                                          ),
                                        ],
                                      ),
                                    )

                                  ],
                                )

                              ],
                            ),
                          ),
                        ),
                      );

                    })

              ],
            ),
          ),
        ),
      ),
    );
  }
}
