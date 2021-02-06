import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';

class ScanScreen extends StatefulWidget {
  static const String id = "scan_screen";
  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  String qrCodeResult = "Not Yet Scanned";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scanner"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Result",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              qrCodeResult,
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              padding: EdgeInsets.all(15.0),
              child: Text("Scan QR Code",
                style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
              ),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.blue,width: 3.0),
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () async {


                String scanning= await BarcodeScanner.scan();    //barcode scnner
                setState(() {
                  qrCodeResult = scanning;
                });

                // try{
                //   BarcodeScanner.scan()    this method is used to scan the QR code
                // }catch (e){
                //   BarcodeScanner.CameraAccessDenied;   we can print that user has denied for the permisions
                //   BarcodeScanner.UserCanceled;   we can print on the page that user has cancelled
                // }


              },
            )
          ],
        ),
      ),
    );
  }

//its quite simple as that you can use try and catch staatements too for platform exception
}