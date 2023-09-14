import 'package:flutter/material.dart';
class TermConditions extends StatelessWidget {
  const TermConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text('Terms & Conditions',style: TextStyle(fontSize: 25,color: Colors.black),),
            SizedBox(height: 20,),
            Text('OVERVIEW',style: TextStyle(fontSize: 25,color: Colors.black),),
            SizedBox(height: 15,),

          ],
        ),
      ),
    );
  }
}
