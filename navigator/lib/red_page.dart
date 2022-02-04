import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {

  RedPage({Key? key}) : super(key: key);
  int _rastgeleSayi=0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:(){
      _rastgeleSayi=Random().nextInt(100);
      print("onwillpop çalıştı üretilen sayı $_rastgeleSayi");
      Navigator.of(context).pop(_rastgeleSayi);
      return Future.value(false);
      },
      child: Scaffold(
      appBar: AppBar(
        title: Text("Red page"),
        backgroundColor: Colors.red,
        
        
        ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Red Page",style: TextStyle(fontSize: 24),),
          Container(
            margin: EdgeInsets.all(55),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: (){
                    _rastgeleSayi=Random().nextInt(100);
                    print(("üretilen sayı $_rastgeleSayi"));
                    Navigator.of(context).pop(_rastgeleSayi);
                    
                  },
                  child: Text("come back ")
                ),
                    ElevatedButton(
              onPressed: () {
               if(Navigator.canPop(context)){
                 print("pop olabilir");
               }else{
                 print("pop olamaz");
               }
              }, 
              child: Text("CanPop"),
              style: ElevatedButton.styleFrom(
              primary: Colors.red.shade600
              ))
              ],
            ),
            
            
          ),
        ],
        
      ),),
      ),
    );
  }
}