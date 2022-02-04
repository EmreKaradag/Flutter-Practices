import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigator/blue_page.dart';
import 'package:navigator/orange_page.dart';
import 'package:navigator/red_page.dart';
import 'package:navigator/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     /*  routes: {
        'redPage':(context)=>RedPage(),
        'orangePage':(context)=>OrangePage(),


      },
      onUnknownRoute: (settings)=>MaterialPageRoute(builder: (context)=>Scaffold(
        appBar: AppBar(title: Text("ERROR"),),body: Center(child: Text("404"),),
      )), */
      onGenerateRoute: RouteGenerator.routeGenerator,
      title: 'Material App',
      //home: AnaSayfa() 
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
              onPressed: (){
                Navigator.push(context,CupertinoPageRoute(builder: (context)=>RedPage()));
              }, 
              child: Text("Kırmızı sayfaya git IOS"),
              style: ElevatedButton.styleFrom(
              primary: Colors.red.shade300
              )),
              ElevatedButton(
              onPressed: () async{
                int _gelenSayi=await Navigator.push(context,MaterialPageRoute(builder: (context)=>RedPage()));
              print(" sayfadaki sayi : $_gelenSayi");
              }, 
              child: Text("Kırmızı sayfaya git Android"),
              style: ElevatedButton.styleFrom(
              primary: Colors.red.shade600
              )),
              ElevatedButton(
              onPressed: () {
               Navigator.of(context).maybePop();
              }, 
              child: Text("MaybePop"),
              style: ElevatedButton.styleFrom(
              primary: Colors.red.shade600
              )),
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
              )),
              ElevatedButton(
              onPressed: () {
               Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>BluePage()));
              }, 
              child: Text("Mavi sayfaya git"),
              style: ElevatedButton.styleFrom(
              primary: Colors.blue.shade600
              )),
                ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, 'redPage');
              }, 
              child: Text("PushNamed kullanımı"),
              style: ElevatedButton.styleFrom(
              primary: Colors.red.shade600
              )),
                ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, 'orangePage2');
              }, 
              child: Text("unkownroute"),
              style: ElevatedButton.styleFrom(
              primary: Colors.orange.shade600
              )),
              ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/yellowPage');
              }, 
              child: Text("sarı sayfaya git",style: TextStyle(color: Colors.black),),
              style: ElevatedButton.styleFrom(
              primary: Colors.yellow.shade300
              )),
              ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context,'/ogrenciListesi',arguments: 60);
                

              }, 
              child: Text("Liste Oluştur"),
              style: ElevatedButton.styleFrom(
              primary: Colors.purple.shade600
              )),
            ],
          ),
        ),
      );
  }
}