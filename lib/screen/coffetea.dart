import 'package:flutter/material.dart';
class CofeTea extends StatefulWidget {
  const CofeTea({super.key});

  @override
  State<CofeTea> createState() => _CofeTeaState();
}

class _CofeTeaState extends State<CofeTea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
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

              ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.vertical,
                  itemCount: 20,

                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white70.withOpacity(0.5),
                            border: Border.all(color: Colors.green,width: 2),
                          ),
                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset('assets/image/freshwash.jpg',height: 120,width: 90,fit: BoxFit.cover,),
                                const SizedBox(width: 10,),
                                const Flexible(child: Text('UOL Organic Green Tea',style: TextStyle(fontSize: 20,color: Colors.green),))
                              ],
                            ),
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
