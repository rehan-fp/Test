import 'dart:async';

import 'package:flutter/material.dart';

import 'menu.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }

}
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState(){
   super.initState();
   Timer(const Duration(seconds: 5), () {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(_)=>Menu()));
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/Images/blue.jpg"),
        fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
          CircularProgressIndicator(
            backgroundColor: Colors.red,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),strokeWidth: 10,
          ),

            Text(

              "SNAKE EYES",
                style: TextStyle(
                fontFamily: "Alegreya",
                  letterSpacing: 15.5,
                fontSize: 40.0,
                color:Colors.white,
                backgroundColor: Colors.red,
                fontWeight: FontWeight.bold,
                shadows: <Shadow>[Shadow(color:Colors.black,blurRadius: 1.0,offset: Offset(4,4))],
              ),

            )]



        ),
      ),


      );


  }
}







