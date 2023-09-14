import 'package:flutter/material.dart';

import 'cartdeleteditem.dart';
class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 7),
           child: Column(
             children: [
               const SizedBox(height: 25,),
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
               const SizedBox(height: 25,),
               const Text('My Cart',style: TextStyle(fontSize: 20,color: Colors.black),),
               const SizedBox(height: 20,),

               ListView.builder(
                 itemCount: 10,
                   shrinkWrap: true,
                   scrollDirection: Axis.vertical,
                   primary: false,
                   itemBuilder: (context,index){
                 return  Padding(
                   padding: const EdgeInsets.symmetric(vertical: 13),
                   child: InkWell(
                     onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>const CartDeletedtem()));

                     },
                     child: Container(
                       height: 150,
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
                             ),
                             const SizedBox(width: 10,),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 const SizedBox(height: 20,),
                                 const Text('Uol Origin Green Tea',style: TextStyle(fontSize: 16,color: Colors.green),),
                                 const SizedBox(height: 40,),
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
                                 const SizedBox(height: 10,),
                                 const Text('৳ 11190.00',style: TextStyle(fontSize: 15,color: Colors.green),),
                               ],
                             ),
                             Column(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,

                               children: [

                                 const Icon(Icons.delete,color: Colors.grey,size: 30,),

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
