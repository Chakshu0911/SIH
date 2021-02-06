import 'package:flutter/material.dart';
import 'image_screen.dart';

class FormScreen extends StatefulWidget {
  static const String id = "form_screen";
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    final halfMediaWidth = MediaQuery.of(context).size.width / 3.0;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.save), onPressed: () {})
        ],
      ),
      body: new Column(
        children: <Widget>[
          new ListTile(
            leading: const Icon(Icons.person),
            title: new Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Container(
                  width: halfMediaWidth,
                  alignment: Alignment.topLeft,
                  child: new TextField(
                    decoration: new InputDecoration(
                      hintText: "First Name",
                    ),
                  ),
                ),

                new Container(
                  width: halfMediaWidth,
                  child: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Last Name",
                    ),
                  ),
                ),
              ],
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.phone),
            title: new TextField(keyboardType: TextInputType.phone,
              decoration: new InputDecoration(
                hintText: "Phone",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.email),
            title: new TextField( keyboardType: TextInputType.emailAddress,
              decoration: new InputDecoration(
                hintText: "Email",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.calendar_today),
            title: new TextField(keyboardType: TextInputType.datetime,
              decoration: new InputDecoration(
                hintText: "Date Of Birth",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.location_city),
            title: new Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Container(
                  width: halfMediaWidth,
                  alignment: Alignment.topLeft,
                  child: new TextField(
                    decoration: new InputDecoration(
                      hintText: "City",
                    ),
                  ),
                ),

                new Container(
                  width: halfMediaWidth,
                  child: new TextField(keyboardType: TextInputType.phone,
                    decoration: new InputDecoration(
                      hintText: "Pin code",
                    ),
                  ),
                ),

              ],
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.house_sharp),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Address",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.credit_card_outlined),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Adhaar No.",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.location_on),
            title: new Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Container(
                  width: halfMediaWidth,
                  alignment: Alignment.topLeft,
                  child: new TextField(keyboardType: TextInputType.phone,
                    decoration: new InputDecoration(
                      hintText: "Longitude",
                    ),
                  ),
                ),

                new Container(
                  width: halfMediaWidth,
                  child: new TextField(keyboardType: TextInputType.phone,
                    decoration: new InputDecoration(
                      labelText: "Latitude",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Material(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              elevation: 5.0,
              child: MaterialButton(
                onPressed: () {Navigator.pushNamed(context, ImageScreen.id);
                  //Implement login functionality.
                },
                minWidth: 150.0,
                height: 30.0,
                child: Text(
                  'Save',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}