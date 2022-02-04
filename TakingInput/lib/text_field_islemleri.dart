import 'package:flutter/material.dart';



import 'package:flutter/material.dart';

class TextFieldIslemleri extends StatefulWidget {
  final String title;
  const TextFieldIslemleri({Key? key,required this.title}) : super(key: key);

  @override
  State<TextFieldIslemleri> createState() => _TextFieldIslemleriState();
}

class _TextFieldIslemleriState extends State<TextFieldIslemleri> {
  
  late TextEditingController? _controllerEmail;
  late FocusNode _focus;
  int maxLineCount=1;
  var bgcolor=Colors.grey;

  @override
  void initState() {
    _controllerEmail=TextEditingController(text: "5435456659");
    _focus=FocusNode();
    _focus.addListener(() {
      setState(() {
        if(_focus.hasFocus){
       bgcolor=Colors.lime;
       maxLineCount=5;
      }else{
        bgcolor=Colors.grey;
        maxLineCount=1;
      }
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _focus.dispose();
    _controllerEmail!.dispose();
  }
  

  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
    appBar: AppBar(
      title: Text(widget.title),
    ),
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: TextField(
            
            controller: _controllerEmail,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.search,
            maxLines: maxLineCount,
            focusNode: _focus,

           
            onChanged: (String deger){
            print(deger);
            },
            onSubmitted:(String deger){
            setState(() {
              
            });
            print(deger);
            },
            cursorColor: Colors.red,
            decoration: InputDecoration(
            
            filled: true,
            fillColor: bgcolor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))
              

            ),
            hintText: "hint text",
            prefixIcon: Icon(Icons.add),
            suffixIcon: Icon(Icons.add_alert),
            ),
            ),

       
        ),
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(_controllerEmail!.text),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: TextField(
            
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.search,
            
            ),
        ),
        
      ],
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){},
      child: Icon(Icons.edit),
    ) ,
    );
  }
}