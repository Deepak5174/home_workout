import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
   options: FirebaseOptions(
          apiKey: "AIzaSyCsIYv9CqV-gZgQ3U2zfLnAP6dEUjEIm-A",
          appId: "1:672420927310:android:945665053220c959f4b01f",
          messagingSenderId: "",
          projectId: "fir-p-80d7c",
          storageBucket:"fir-p-80d7c.appspot.com" );



  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: fire_media_storage(),
  ));
}

class fire_media_storage extends StatefulWidget {
  const fire_media_storage({super.key});

  @override
  State<fire_media_storage> createState() => _fire_media_storageState();
}

class _fire_media_storageState extends State<fire_media_storage> {
  FirebaseStorage storage = FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("media storage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                // camera
                ElevatedButton.icon(
                    onPressed: () => upload('camera'),
                    icon: Icon(Icons.camera_alt),
                    label: Text("Camera")),

                    SizedBox(width: 50,),
                //  Gallery
                ElevatedButton.icon(
                    onPressed: () => upload('camera'),
                    icon: Icon(Icons.browse_gallery),
                    label: Text("Browse")),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> upload(String imageSource) async {
    final picker = ImagePicker();

    XFile? pickedImage;
    try {
      pickedImage = await picker.pickImage(
          source: imageSource == 'camera'
              ? ImageSource.camera
              : ImageSource.gallery,
          maxWidth: 1920);

      final String fileName = path.basename(pickedImage!.path);

      File imagefile = File(pickedImage.path);

      try {
        await storage.ref(fileName).putFile(
            imagefile,
            SettableMetadata(customMetadata: {
              'uploded by': 'its me xxxx',
              'description': 'Some description',
            }));

        setState(() {});
      } on FirebaseException catch (error) {
        print(error);
      }
    } catch (error) {
      print(error);
    }
  }
}
