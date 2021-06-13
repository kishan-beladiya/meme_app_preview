import 'package:flutter/material.dart';
import 'package:meme/pages/drawer.dart';
import 'package:meme/tabs/create.dart';
import 'package:meme/tabs/explore.dart';
import 'package:meme/tabs/quote.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'App Name',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
          actions: [
            Icon(Icons.share),
            SizedBox(width: 10.0),
          ],
          backgroundColor: Colors.grey[800],
          elevation: 4.0,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Explore',
              ),
              Tab(
                text: 'Create',
              ),
              Tab(
                text: 'Jokes',
              ),
            ],
          ),
        ),
        body: TabBarView(
          // physics: NeverScrollableScrollPhysics(),
          children: [
            Explore(),
            Create(),
            Quote(),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height:55.0,
            padding:EdgeInsets.all(1.0),
            child: Center(
              child: Text('Ads Section'),
            ),
          ),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
