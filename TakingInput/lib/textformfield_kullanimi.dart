import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TextFormFieldKullanimi extends StatefulWidget {
  TextFormFieldKullanimi({Key? key}) : super(key: key);

  @override
  _TextFormFieldKullanimiState createState() => _TextFormFieldKullanimiState();
}

class _TextFormFieldKullanimiState extends State<TextFormFieldKullanimi> {
 
 String _email="",_username="",_password="";
 final _formKey=GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFormField Kullanımı"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
           key: _formKey,
           autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                //Username
                TextFormField(
                  onSaved: (deger){
                  _username=deger!;
                  },
                 
                  validator: (deger){
                  if(deger!.length<10){
                    return "isim 10 karakterden küçük olamaz";
                  }else{
                    return null;
                  }
                  },
                  decoration: InputDecoration(
                    
                    border: OutlineInputBorder(),
                    hintText: "Username"
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //email
                 TextFormField(
                  onSaved: (deger){
                  _email=deger!;
                  },
                 
                  keyboardType: TextInputType.emailAddress,
                  validator: (deger){
                  if(EmailValidator.validate(deger!)){
                    return null;
                  }else{
                    return "email yanlış";
                  }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email"
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                 
                 //Password
                 TextFormField(
                   onSaved: (deger){
                  _password=deger!;
                  },
                  obscureText: true,
                
                  keyboardType: TextInputType.text,
                  validator: (deger){
                  if(deger!.length < 6){
                    return "en az 6 karakter olmalı";
                  }else{
                    return null;
                  }
                  },
                  decoration: InputDecoration(
                    
                    border: OutlineInputBorder(),
                    hintText: "Password"
                  ),
                ),
              ElevatedButton(onPressed: (){
             bool validation= _formKey.currentState!.validate();
             if(validation){
               _formKey.currentState!.save();
                String result="Username $_username\nemail $_email\npassword $_password";
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(result,style: TextStyle(fontSize: 24)),backgroundColor: Colors.orange.shade300,),
                );
                _formKey.currentState!.reset();
             }
              }, child: Text("Onayla"))
              ],
            ),
          ),
        ),
      )
    );
  }
}