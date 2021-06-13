import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Center(
                    child: Text(
                      'App Name',
                      style: TextStyle(
                        fontSize: 22.0,  
                      ),
                    ),
                  ),
                ),
                Divider(height: 10.0,),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.share,
                    color: Colors.grey[800],
                  ),
                  title: Text(
                    'Share with Friends',
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.star,
                    color: Colors.grey[800],
                  ),
                  title: Text(
                    'Rate on PlayStore',
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.app_badge,
                    color: Colors.grey[800],
                  ),
                  title: Text(
                    'Other App',
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.chevron_left_slash_chevron_right,
                    color: Colors.grey[800],
                  ),
                  title: Text(
                    'Creator Info',
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
