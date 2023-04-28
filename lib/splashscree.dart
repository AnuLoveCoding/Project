import 'dart:async';
import 'package:firstapp/Loginpage.dart';
import 'package:lottie/lottie.dart';

import 'package:flutter/material.dart';

class splashscree extends StatefulWidget {
  const splashscree({Key? key}) : super(key: key);

  @override
  State<splashscree> createState() => _splashscreeState();
}

class _splashscreeState extends State<splashscree> {
  // In spalash Screen we use timing function;
  void initstate(){
    super.initState();
   Timer(Duration(seconds: 5), ()=>

   Navigator.push(context,MaterialPageRoute(builder: (context){
     return login();
   })),
   );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Splash Screen'),
        centerTitle: true,
      ),

      body:Container(
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        image: DecorationImage(image: NetworkImage('https://images.pexels.com/photos/1266302/pexels-photo-1266302.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),fit: BoxFit.cover),
        color: Colors.greenAccent,
      ),
    ),

    );
  }

}
