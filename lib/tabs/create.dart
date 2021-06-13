import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

class Create extends StatefulWidget {
  const Create({Key? key}) : super(key: key);

  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {
  // ignore: avoid_init_to_null
  // File? _image = null;
  // final picker = ImagePicker();
  // Future getImageFromGallary() async {
  //   final pickedFile = await picker.getImage(source: ImageSource.gallery);
  //   setState(() {
  //     _image = File(pickedFile!.path);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
        child: Center(
          // ignore: unnecessary_null_comparison
          child:Text('coming soon...'),
        ),
      ),
    );
  }
}
