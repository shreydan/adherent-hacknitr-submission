import 'package:flutter/material.dart';

import 'home.dart';

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
        ],
        //Container(
        // child: RaisedButton(
        // color: Colors.lightBlueAccent,
        // child: Text("               JOIN             ",style: TextStyle(
        //   color: Colors.white,
        //  fontSize:20,
        //fontWeight: FontWeight.bold
        //),
        //),
        // onPressed: () {
        //Navigator.of(context)
        // .push(
        // MaterialPageRoute(
        //  builder: (context) => Home(),
        // )
        // );
        // }
        // ),
        //  ),
      ),
    );
  }

// Widget buildIcons() {
// return Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
//  children: [
//  buildBox(child: Icon(Icons.wb_cloudy)),
//  buildBox(child: Icon(Icons.announcement)),
//  buildBox(child: Icon(Icons.calendar_today)),
//  buildBox(child: Icon(Icons.warning)),
// ],
//  );
// }

// Widget buildBox({required Widget child}) =>
// Container(
//  decoration: BoxDecoration(
//    color: Colors.red.shade200,
//  ),
//   padding: EdgeInsets.all(20),
//  child: child,
// );
}
