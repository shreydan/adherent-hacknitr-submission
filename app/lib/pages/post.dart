import 'package:app/pages/feed.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

void main() => runApp(MaterialApp(
      home: post(),
    ));

class post extends StatelessWidget {
  // const post({Key? key}) : super(key: key);

  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();

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
            padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.white))),
            child: TextField(
              controller: title,
              decoration: InputDecoration(
                labelText: "TITLE",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.white))),
            child: TextField(
              controller: content,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                labelText: "CONTENT",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Container(
              child: Center(
            child: RaisedButton(
                color: Colors.purpleAccent,
                child: Text(
                  "POST",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () async {
                  var url =
                      Uri.parse("https://adherent.herokuapp.com/api/events");

                  var response = await http.post(url, body: {
                    "username": "Lavanya",
                    "title": title.text,
                    "content": content.text,
                    "latitude": "81.6455",
                    "longitude": "21.2110"
                  });

                  if (response.statusCode == 201) {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Quotelist(),
                    ));
                  }
                }),
          )),
        ],
      ),
    );
  }
}
