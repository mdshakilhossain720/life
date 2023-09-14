import 'package:flutter/material.dart';
import 'package:newultimatelife/style/style.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String  selectedValue='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(height: 70,),
                Text('Edit Profile',style: TextStyle(fontSize: 25,color: Colors.black),),
                SizedBox(height: 20,),
                 TextFormField(
                   decoration: AppInputDecoration('Kawser'),
                 ),
                SizedBox(height: 15,),
                TextFormField(
                  decoration: AppInputDecoration('ahamed'),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  decoration: AppInputDecoration('youremail@gmail.com'),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  decoration: AppInputDecoration('01427625562'),
                ),

                SizedBox(height: 15,),
                Dropdownbutton(
                  DropdownButton(
                    dropdownColor: Colors.white,
                    value: selectedValue,
                    items: [
                      const DropdownMenuItem(child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Male"),
                      ),value: '',),
                      const DropdownMenuItem(child: Text("1 pcs"),value: '1 pcs',),
                      const DropdownMenuItem(child: Text("2 pcs"),value: '2 pcs',),
                      const DropdownMenuItem(child: Text("3 pcs"),value: '3 pcs',),



                    ], onChanged: (String? value){
                    setState(() {
                      selectedValue = value!;
                    });
                    // inputonchange('Qty', Textvalue);
                  },
                    isExpanded: true,
                    underline: Container(),
                  ),

                ),
                SizedBox(height: 50,),

                ElevatedButton(onPressed: (){}, style: AppButtonStyle(),child: SuccessButtonStyle('Save Change')),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
