import 'package:app/pages/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../model/eventsmodel.dart';
import '../services/fetchdata.dart';

void main() => runApp(MaterialApp(
      home: Quotelist(),
    ));

class Quotelist extends StatefulWidget {
  const Quotelist({Key? key}) : super(key: key);

  @override
  _QuotelistState createState() => _QuotelistState();
}

class _QuotelistState extends State<Quotelist> {
  var events = <Result>[];
  var pageNumber = 1;
  bool _loading = true;
  bool hasMore = true;

  @override
  void initState() {
    super.initState();
    getEvents();
  }

  getEvents() async {
    EventsItem eventItemClass = EventsItem();

    if (hasMore) {
      await eventItemClass.getEvents(page: pageNumber);

      events.addAll(eventItemClass.events);

      setState(() {
        _loading = false;
        hasMore = eventItemClass.hasMore;
        pageNumber = eventItemClass.hasMore ? pageNumber + 1 : pageNumber;
      });
    }

    return eventItemClass.hasMore;
  }

  final RefreshController refreshControl =
      RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('FEEDS'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => post(),
          ));
        },
        child: Text('post'),
        backgroundColor: Colors.amber,
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : SmartRefresher(
              controller: refreshControl,
              enablePullUp: true,
              enablePullDown: false,
              onLoading: () async {
                final result = await getEvents();
                if (result) {
                  refreshControl.loadComplete();
                } else {
                  refreshControl.loadFailed();
                }
              },
              child: ListView.builder(
                  itemCount: events.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return quoteCard(quote: events[index]);
                  }),
            ),
    );
  }
}

class quoteCard extends StatelessWidget {
  final Result quote;
  //final Function delete;
  quoteCard({
    required this.quote,
  });

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
                quote.username,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 3.0),
              Text(
                quote.dateTime,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4.0),
              Container(
                child: Row(children: <Widget>[
                  Text(
                    quote.areaName,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.location_on_rounded,
                    color: Colors.redAccent,
                  )
                ]),
              ),
              SizedBox(height: 9.0),
              Text(
                quote.title,
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
              SizedBox(
                height: 50,
              ),
              // LikeButton(mainAxisAlignment: MainAxisAlignment.end),
            ]),
      ),
    );
  }
}
