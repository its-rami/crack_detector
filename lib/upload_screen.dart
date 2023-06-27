// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'constants.dart';

class UploadScreen extends StatefulWidget {
  @override
  _UploadScreen createState() => _UploadScreen();
}

class _UploadScreen extends State<UploadScreen> {
  ImagePicker picker = ImagePicker();
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Walls Condition Checker'),
          backgroundColor: klightblue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.grey,
                child: image == null
                    ? Icon(Icons.camera_alt)
                    : Image.file(
                        File(image!.path),
                        fit: BoxFit.cover,
                      ),
              ),
              DropdownMenu(
                dropdownMenuEntries: [],
              ),
              ElevatedButton(
                onPressed: () async {
                  image = await picker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    //update UI
                  });
                },
                child: Text("Pick Image"),
                style: ElevatedButton.styleFrom(backgroundColor: kdarkbrown),
              ),
            ],
          ),
        ));
  }
}
