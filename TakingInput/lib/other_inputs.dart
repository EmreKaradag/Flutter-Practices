import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtherInputs extends StatefulWidget {
  OtherInputs({Key? key}) : super(key: key);

  @override
  _OtherInputsState createState() => _OtherInputsState();
}

class _OtherInputsState extends State<OtherInputs> {

  bool CheckBox1=false;
  String radioButtonDef="default";
  String sehir="";

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView(
          //checkbox
          children: [
          CheckboxListTile(value: CheckBox1, onChanged: (isChecked){
          
          setState(() {
            CheckBox1=isChecked!;
          });
           },
           activeColor: Colors.grey,
           title: Text("anan"),
           subtitle: Text("bacın"),
           secondary: Icon(Icons.add),
           
           ),
          //radio
          RadioListTile<String>(value: "Ankara" ,groupValue: sehir, onChanged: (secilen){
          sehir!=secilen;
          setState(() {
            debugPrint("RB1");
          
          });
          },
          title: Text("Ankara"),
          ),
          
          
          RadioListTile<String>(value: "Bursa", groupValue: sehir, onChanged: (secilen){
        
           
          setState(() {
             debugPrint("RB2");
             sehir!=secilen;
          });
          },
          
          title: Text("Bursa"),
          
          
          ),
          RadioListTile<String>(value: "İzmir", groupValue: sehir, 
          
          onChanged: (secilen){
             debugPrint("RB3");
          setState(() {
           sehir!=secilen;
          });
         
          },
          title: Text("İzmir"),
          )

          ],
         
          



        ),
      ),
    );
  }
}