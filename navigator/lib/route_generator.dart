import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigator/main.dart';
import 'package:navigator/ogrenci_detay.dart';
import 'package:navigator/ogrenci_listesi.dart';
import 'package:navigator/yellow_page.dart';


class RouteGenerator{

 static _routeOlustur(Widget gidilecekWidget,RouteSettings settings){
    return MaterialPageRoute(builder: (context)=>gidilecekWidget,settings: settings);
    
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings){
   switch(settings.name){
     case '/':
     return _routeOlustur(AnaSayfa(),settings);
     case '/yellowPage':
     return _routeOlustur(YellowPage(),settings);
     case '/ogrenciListesi':
     return _routeOlustur(OgrenciListesi(),settings);
     case '/ogrenciDetay':
     var secilen=settings.arguments as Ogrenci;
     return _routeOlustur(OgrenciDetay(secilenOgrenci: secilen,),settings);

     default :
     return MaterialPageRoute(builder: (context)=>Scaffold(
     appBar: AppBar(title: Text("ERROR"),),body: Center(child: Text("404"),),
     ));

   }
  }
}