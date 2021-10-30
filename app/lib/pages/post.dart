import 'package:app/pages/feed.dart';
import 'package:flutter/material.dart';


void main() => runApp( MaterialApp(
  home: post(),
));

class post extends StatelessWidget {
  const post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Update Category'),
      ),
      body: Column(
        children: <Widget>[
          // buildIcons(),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.white)
                )
            ),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "TITLE",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.white)
                )
            ),
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                  labelText: "CONTENT",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none
              ),
            ),
          ),
          Container(
              child: Center(
                child: RaisedButton(
                    color: Colors.purpleAccent,
                    child: Text("               POST             ",style: TextStyle(
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
          ),
        ],
      ),
    );
  }
}