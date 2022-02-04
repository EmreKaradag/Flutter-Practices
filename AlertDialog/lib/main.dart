import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  late TextEditingController _controller1;
  String sayi="0";
  MaterialColor backGroundColor=Colors.red;
  

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller1=TextEditingController();
  }

  // This widget is the root of your application.
  @override

  

  Widget build(BuildContext context) {
    
     return Scaffold(
       backgroundColor: backGroundColor,
       appBar: AppBar(title: Text("AlertDialog"),),
       body: Center(
         child: Container(child: Text(sayi),)
       ),

      floatingActionButton: FloatingActionButton(
         onPressed: () async{
            var textInput=await showDialog(context: context, builder: (context)=>AlertDialog(
      actions: [
      TextButton(onPressed: (){
       Navigator.pop(context,_controller1.text);
      }, child:  Icon(Icons.check)),
      TextButton(onPressed: (){
        Navigator.pop(context);
      }, child:  Icon(Icons.cancel))
      ],
      title: Text("AlertDialog"),
      content: TextField(
      decoration: InputDecoration(
      hintText: "please type something"
      ),  
      ),
      
    ));
            
            if(textInput is String){
            print("veri girildi");
            setState(() {
            backGroundColor=Colors.green;
            sayi=textInput;
            });
            }
         
         },
       ),
      
     );
    ;
  }

   
}

