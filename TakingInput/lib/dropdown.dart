import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownKullanimi extends StatefulWidget {
  DropDownKullanimi({Key? key}) : super(key: key);

  @override
  _DropDownKullanimiState createState() => _DropDownKullanimiState();
}

class _DropDownKullanimiState extends State<DropDownKullanimi> {

 String secilenRenk="kirmizi";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: Container(
        child: DropdownButton<String>(
        dropdownColor: Colors.amber, 
        
        items: [
        DropdownMenuItem<String>(child: Container(
        
          color: Colors.red,
          child: Row(
            
            children: [
              Icon(Icons.add),
              Text("item1"),
            ],
          ),
        ),value: "kirmizi"),
        DropdownMenuItem<String>(child: Text("item2"),value: "yesil"),
        DropdownMenuItem<String>(child: Text("item3"),value: "mavi"),
        ],
        onChanged: (secilen){
        setState(() {
          secilenRenk!=secilen;
        });
        },
        hint: Text("giriniz"),
        value: secilenRenk,
        ),
        
      ),
    ),
    );
  }
}