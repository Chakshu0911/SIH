import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageScreen extends StatefulWidget {
  static const String id = "image_screen";
  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
 File _image;

 Future getImage() async {
   var image = await ImagePicker.pickImage(source: ImageSource.camera);

   setState(() {
     _image = image;
   });
 }

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('SIH'),
     ),
     body:  Padding(
       padding: EdgeInsets.symmetric(horizontal: 24.0),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[

           SizedBox(
             height: 48.0,
           ),
           Padding(
             padding: EdgeInsets.symmetric(vertical: 16.0),
             child: Material(
               elevation: 5.0,
               color: Colors.lightBlueAccent,
               borderRadius: BorderRadius.circular(30.0),
               child: MaterialButton(
                 onPressed: getImage,
                 minWidth: 200.0,
                 height: 42.0,
                 child: Text(
                   'Image 1',
                 ),
               ),
             ),
           ),
           Padding(
             padding: EdgeInsets.symmetric(vertical: 16.0),
             child: Material(
               color: Colors.blueAccent,
               borderRadius: BorderRadius.circular(30.0),
               elevation: 5.0,
               child: MaterialButton(
                 onPressed: getImage,
                 minWidth: 200.0,
                 height: 42.0,
                 child: Text(
                   'Image 2',
                 ),
               ),
             ),
           ),
           Padding(
             padding: EdgeInsets.symmetric(vertical: 16.0),
             child: Material(
               color: Colors.lightBlueAccent,
               borderRadius: BorderRadius.circular(30.0),
               child: MaterialButton(
                 onPressed: getImage,
                 minWidth: 200.0,
                 height: 42.0,
                 child: Text(
                   'Image 3',
                 ),
               ),
             ),
           ),
           Padding(
             padding: EdgeInsets.symmetric(vertical: 16.0),
             child: Material(
               color: Colors.blueAccent,
               borderRadius: BorderRadius.circular(30.0),
               elevation: 5.0,
               child: MaterialButton(
                 onPressed: getImage,
                 minWidth: 200.0,
                 height: 42.0,
                 child: Text(
                   'Image 4',
                 ),
               ),
             ),
           ),
         ],
       ),
     ),






   );
 }
}