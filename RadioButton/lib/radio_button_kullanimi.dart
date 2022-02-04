import 'package:flutter/material.dart';

class RadioButtonKullanimi extends StatefulWidget {
  
  RadioButtonKullanimi({Key? key}) : super(key: key);

  @override
  _RadioButtonKullanimiState createState() => _RadioButtonKullanimiState();
}

class _RadioButtonKullanimiState extends State<RadioButtonKullanimi> {
  
  String? rb1="";
   MaterialColor renk=Colors.deepPurple;

  @override
  Widget build(BuildContext context) {

    

    return Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Icon(Icons.lightbulb_outline,size: 100,color: renk),
        RadioListTile(
        title: Text("Kırmızı"),
        value: "red",groupValue: rb1,onChanged:(String? selected){
        renk=Colors.red;
        rb1=selected;
        setState(() {
          debugPrint("rb1");
        });
        }
        ),
        
        
        RadioListTile(
        title: Text("Yeşil"),
        value: "green",groupValue: rb1,onChanged: (String? selected){
        rb1=selected;
        renk=Colors.green;
        setState(() {
        debugPrint("rb2");
        });
        }),
        
        
        
        RadioListTile(
        title: Text("Mavi"),
        value: "blue",groupValue: rb1,onChanged: (String? selected){
        renk=Colors.blue;
        rb1=selected;
        setState(() {
          debugPrint("rb3");
        });
        }),
        ],
      ),
    ),
    );
  }
}