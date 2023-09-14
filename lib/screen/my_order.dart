import 'package:flutter/material.dart';
class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  hintText: 'search for order',
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
              //tabbar
              const SizedBox(height: 20,),
              ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  primary: false,
                  itemCount: 20,
                  itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white70,

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*.9,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                          ),
                          child:  Row(
                            children: [
                              Expanded(child: Image.asset('assets/image/freshwash.jpg',fit: BoxFit.cover,)),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const SizedBox(height: 9,),
                                    const Text('Uol Originc GreenTea',style: TextStyle(fontSize: 18,color: Colors.green),),
                                    const SizedBox(height: 20,),
                                    const Text('Varilation',style: TextStyle(fontSize: 16,color: Colors.blue),),
                                    const SizedBox(height: 6,),
                                    Container(
                                      alignment: Alignment.center,
                                        height: 20,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.green),
                                      ),
                                      child:const Text('80 GM',style:TextStyle(fontSize: 12,color: Colors.blue) ,),
                                    ),
                                    const SizedBox(height: 8,),
                                    const Text(' ৳ 1190.00',style: TextStyle(fontSize: 17,color: Colors.blue),),


                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    alignment: Alignment.bottomRight,
                                    child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green,

                                    ),child: const Text('Leave Review',style: TextStyle(fontSize: 15,
                                        color: Colors.white),)),
                                  ),
                                ],
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
    );
  }
}
