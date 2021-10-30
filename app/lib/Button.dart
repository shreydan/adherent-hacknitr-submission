
import 'package:flutter/material.dart';
import 'package:app/pages/feed.dart';
import 'package:app/pages/quote.dart';

class Button extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          color: Colors.purpleAccent,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: RaisedButton(
              color: Colors.purpleAccent,
              child: Text("               JOIN             ",style: TextStyle(
                  color: Colors.white,
                  fontSize:20,
                  fontWeight: FontWeight.bold
              ),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(
                    MaterialPageRoute(
                      builder: (context) => Quotelist(),
                    )
                );
              }
          ),
        )
    );
  }
}