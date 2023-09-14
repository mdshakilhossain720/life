import 'package:flutter/material.dart';
import 'package:newultimatelife/style/style.dart';
class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50,),
              const Text('Deliverd Address',style: TextStyle(fontSize: 25,color: Colors.grey),),
              const SizedBox(height: 35,),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.home,color: Colors.green,size: 35,),
                            Text('HOME',style: TextStyle(fontSize: 20,color: Colors.green),),
                            Spacer(),
                            Text('Edit',style: TextStyle(fontSize: 17,color: Colors.grey),),

                          ],
                        ),
                        SizedBox(height: 5,),
                        Text('Kawser Ahmmrd',style: TextStyle(fontSize: 17,color: Colors.green),),
                        SizedBox(height: 5,),
                        Text('ho-73,R3,Block -B,Nikten,Gulshan 1',style: TextStyle(fontSize: 15,color: Colors.green),),
                        SizedBox(height: 5,),
                        Text('+xxxx0172266629',style: TextStyle(fontSize: 17,color: Colors.green),),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.home,color: Colors.green,size: 35,),
                            Text('HOME',style: TextStyle(fontSize: 20,color: Colors.green),),
                            Spacer(),
                            Text('Edit',style: TextStyle(fontSize: 17,color: Colors.grey),),

                          ],
                        ),
                        SizedBox(height: 5,),
                        Text('Kawser Ahmmrd',style: TextStyle(fontSize: 17,color: Colors.green),),
                        SizedBox(height: 5,),
                        Text('ho-73,R3,Block -B,Nikten,Gulshan 1',style: TextStyle(fontSize: 15,color: Colors.green),),
                        SizedBox(height: 5,),
                        Text('+xxxx0172266629',style: TextStyle(fontSize: 17,color: Colors.green),),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25,),

              ElevatedButton(onPressed: (){}, style: AppButtonStyle(),child: SuccessButtonStyle('+ Add To New Address'))
            ],
          ),
        ),
      ),
    );
  }
}
