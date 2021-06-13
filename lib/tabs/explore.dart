import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final String url = "https://reddit-meme-api.herokuapp.com/199/";
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
      _data = convertData["memes"];
      // print(_data![0]);
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
              itemCount: _data==null?0:_data!.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                  child: Card(
                    elevation:0.0,
                    // shape: RoundedRectangleBorder(
                    //   side: BorderSide(width:0.5),
                    //   borderRadius: BorderRadius.circular(0.0),
                    // ),
                    child: Column(
                      children: [
                        Card(
                          child: Container(
                            child:_data![index]==null?Text('Waiting...'):Image.network(_data![index]["url"],),
                          ),
                          elevation: 0.0,      
                        ),
                        Divider(
                          height: 10.0,
                        ),
                      ],
                    ),
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
