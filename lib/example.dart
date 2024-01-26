import 'package:flutter/material.dart';

import 'class.dart';



class example extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar:buildAppBar(context),

      body: SafeArea(
        child: Column(
          children: <Widget>[
            Image.asset('assets/Images/l.jpg'),
            ListView.builder(
              itemCount: name.length,
              itemBuilder: (context,index)=>Container(
                margin: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 25.0),
                decoration: BoxDecoration(
                  color: Colors.lightGreenAccent,
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children:<Widget> [
                    SizedBox(
                      width: 55,
                      height: 55,
                      child:Icon(icons[index]),
                    ),
                    const SizedBox(width:30,),
                    Text(
                      name[index],
                      style: const TextStyle(
                        color:Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                      child: Icon(Icons.keyboard_arrow_right_rounded),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildAppBar(BuildContext context) {}
  
  
}