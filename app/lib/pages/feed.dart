import 'package:app/pages/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'quote.dart';

void main() => runApp( MaterialApp(
  home: Quotelist(),
));


class Quotelist extends StatefulWidget {
  const Quotelist({Key? key}) : super(key: key);

  @override
  _QuotelistState createState() => _QuotelistState();
}

class _QuotelistState extends State<Quotelist> {

  List<Quote> quotes = [

    Quote(author: 'priyansh', text: 'ganesh puja at 7:30pm' , time: 'today' , place: 'Devendra Nagar' , content: 'sjhdshfchdshbfjdb'),
    Quote(author: 'dakshesh', text: 'seems like it will rain' , time: 'yesterday' , place: 'Shailendra Nagar' ,content: 'sjhdshfchdshbfjdb'),
    Quote(author: 'lavanya23', text:  'exhibition at 5:00pm' , time: '26/10/21' , place: 'DDU', content: 'sjhdshfchdshbfjdb'),
    Quote(author: 'mohit2', text: 'raining' , time: '23/10/21' , place: 'Dunda', content: 'sjhdshfchdshbfjdb'),
    Quote(author:  'shreyas0', text: 'road under maintainance' , time: '18/10/21' , place: 'kota', content: 'sjhdshfchdshbfjdb'),
  ];
  int count=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('FEED'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
              MaterialPageRoute(
                builder: (context) => post(),
              )
          );
        },
        child: Text('post'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: quotes.map((quote) =>quoteCard(
            quote: quote,
          )).toList(),
        ),
      ),
    );
  }
}

class quoteCard extends StatelessWidget {

  final Quote quote;
  //final Function delete;
  quoteCard({ required this.quote, });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.author,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 3.0),
              Text(
                quote.time,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4.0),
              Container(
                child: Row( children: <Widget>[
                  Text(
                    quote.place,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                  Icon(Icons.location_on_rounded,
                    color: Colors.redAccent,
                  )
                ]
                ),
              ),
              SizedBox(height: 9.0),
              Text(
                quote.text,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                quote.content,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blueGrey,
                ),
              ),
              SizedBox(height: 50,),
              // LikeButton(mainAxisAlignment: MainAxisAlignment.end),
            ]
        ),
      ),
    );
  }
}
