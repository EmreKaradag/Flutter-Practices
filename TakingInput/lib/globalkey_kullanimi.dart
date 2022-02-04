import 'package:flutter/material.dart';

class GlobalKeyKullanimi extends StatelessWidget {
   GlobalKeyKullanimi({Key? key}) : super(key: key);
  final _sayackey=GlobalKey<_SayacWidgetState>();

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: (){
      _sayackey.currentState!.arttir();
      },
      child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
          SayacWidget(key: _sayackey),
          ],
        ),
      ),
    );
  }
}

class SayacWidget extends StatefulWidget {
  SayacWidget({Key? key}) : super(key: key);

  @override
  _SayacWidgetState createState() => _SayacWidgetState();
}

class _SayacWidgetState extends State<SayacWidget> {
  
  int _sayac=0;
  
  void arttir(){
    
    setState(() {
      _sayac++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(_sayac.toString());
  }
}
