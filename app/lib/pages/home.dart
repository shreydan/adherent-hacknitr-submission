import 'package:app/pages/post.dart';
import 'package:flutter/material.dart';

import 'body.dart';

class Home extends StatelessWidget {
  final topBar = new AppBar(
    backgroundColor: Colors.lightBlue,
    centerTitle: true,
    elevation: 1.0,
    title: SizedBox(
      height: 35.0,child: Text('My Feed'),),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.saved_search),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: topBar,
        body: new Body(),
        backgroundColor: Colors.blueGrey.shade900,
        bottomNavigationBar: new Container(
          color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          child: new BottomAppBar(
            child: new Row(
              // alignment: MainAxisAlignment.spaceAround,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new IconButton(
                  icon: Icon(
                    Icons.home,
                  ),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: Icon(
                    Icons.filter_list_alt,
                  ),
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.add_box,
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(
                        MaterialPageRoute(
                          builder: (context) => post(),
                        )
                    );
                  },
                ),
                new IconButton(
                  icon: Icon(
                    Icons.favorite,
                  ),
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.account_box,
                  ),
                  onPressed: null,
                ),
              ],
            ),
          ),
        ));
  }
}