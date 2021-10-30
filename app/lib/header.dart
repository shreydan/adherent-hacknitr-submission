import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Text("JOIN", style: TextStyle(color: Colors.white, fontSize: 40),),
          ),
          SizedBox(height: 10.0,),
          Center(
            child: Text("NOW", style: TextStyle(color: Colors.white, fontSize: 40),),
          ),
          SizedBox(height: 50.0,),
          Center(
            child: Text("Welcome to Adherent", style: TextStyle(color: Colors.black, fontSize: 18),),
          )
        ],
      ),
    );
  }
}