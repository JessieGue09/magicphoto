import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class LoadImageScreen extends StatefulWidget {
  const LoadImageScreen({Key? key}) : super(key: key);
  static const routeName = './loadimage-screen';


  @override
  _LoadImageScreenState createState() => _LoadImageScreenState();


}

class _LoadImageScreenState extends State<LoadImageScreen>{
  late Future<File> imageFile;
  final ImagePicker _picker = ImagePicker();


    //Open gallery
    pickImageFromGallery(ImageSource source) async {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      setState(() {
        imageFile = _picker.pickImage(source: source) as Future<File>;
      });
    }




  Widget showImage() {
    return FutureBuilder<File>(
      future: imageFile,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.data != null) {
          return Image.file(
            snapshot.data!,
            width: 300,
            height: 300,
          );
        } else if (snapshot.error != null) {
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        } else {
          return const Text(
            'No Image Selected',
            textAlign: TextAlign.center,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Column(
          children: [
            showImage(),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text('Generar'),
              color: Colors.pinkAccent,
              onPressed: () {
                pickImageFromGallery(ImageSource.gallery);
              }
            ),
          ],
        )
    );
  }
}
