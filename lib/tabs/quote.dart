import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Quote extends StatefulWidget {
  const Quote({Key? key}) : super(key: key);

  @override
  _QuoteState createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {
  final String url = "https://official-joke-api.appspot.com/random_ten";
  List? _data = null;

  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }

  Future<dynamic> getJsonData() async {
    var response = await http.get(Uri.parse(url));

    //kishan beladiya

    setState(() {
      var convertData = json.decode(response.body);
      _data = convertData;
      // print(data[0]);
    });
  }

  @override
  Widget build(BuildContext context) {
    if ((_data != null)) {
      return RefreshIndicator(
        onRefresh: getJsonData,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 0.0),
            child: ListView.builder(
              itemCount: _data!.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 0.0,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(CupertinoIcons.person),
                        title: Text(
                          'you  :-  ${_data![index]["setup"]}',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                      ListTile(
                        leading: Icon(CupertinoIcons.person_2),
                        title: Text(
                          'me  :-  ${_data![index]["punchline"]}',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                      Divider(
                        height: 20.0,
                      ),
                    ],
                  ),
                );
                
              },
            ),
          ),
        ),
      );
    } else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
