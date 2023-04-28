import 'package:flutter/material.dart';


class login extends StatelessWidget {
   login({Key? key}) : super(key: key);

  var name = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),

      body: Container(
        padding: EdgeInsets.all(20.0),
        alignment: Alignment.center,
        color: Colors.amber[200],

          child: Column(
            children: [
              DisplayData('images/road.jpg', context),
              SizedBox(height: 10.0,),
              TextField(
                  controller: name,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person,color: Colors.indigo, shadows: [BoxShadow(offset: Offset(1, 3))],),
                  enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  hintText: 'Enter Your Name'
                ),
               ),

             SizedBox(height: 10.0,),

             TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.password,color: Colors.cyanAccent,shadows: [BoxShadow(offset: Offset(1, 3))],),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  hintText: 'Enter Your password'
                ),
             ),

              SizedBox(height: 10.0,),
              ElevatedButton(onPressed: (){
                print('${name.text} \n ${password.text}');
               }, child: Text('Click me please'))
            ],
          ),
      ),
    );
  }
  Widget DisplayData(String url, BuildContext context){
    return Container(

      margin: EdgeInsets.only(left: 10.0,),
      constraints: BoxConstraints.expand(width: double.infinity,height: 100.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          image: DecorationImage(image: AssetImage('images/road.jpg'),fit: BoxFit.cover)
      ),
    );
  }
}
