import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Youtube Error UI',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(primaryColor: Colors.white),
        home: new Scaffold(
          body: new MyHomePage(),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  static const double _widgetSpacing = 8.0;
  static const double _castSpacing = 16.0;
  static const double _widgetSize = 28.0;
  static const double _bottomNavSize = 28.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: new Row(
            children: <Widget>[
              Container(
                  width: 40.0,
                  child: new Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.contain,
                  )),
              new Text(
                "YouTube",
                style: new TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20.0,
                    fontFamily: null),
              )
            ],
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: _castSpacing),
            child: new Icon(
              Icons.cast,
              size: _widgetSize,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: _widgetSpacing),
            child: new Icon(Icons.videocam,
                size: _widgetSize, color: Colors.black54),
          ),
          Padding(
            padding: const EdgeInsets.only(right: _widgetSpacing),
            child: new Icon(
              Icons.search,
              size: _widgetSize,
              color: Colors.black54,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: _widgetSpacing),
            child: new Icon(
              Icons.account_circle,
              size: _widgetSize,
              color: Colors.pinkAccent,
            ),
          )
        ],
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Icon(Icons.error_outline, size: 95.0, color: Colors.black54,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("An error occured", style: new TextStyle(color: Colors.black54, fontSize: 16.0),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("RETRY", style: new TextStyle(color: Colors.blueAccent, fontSize: 22.0, fontWeight: FontWeight.w600)),
          )
        ],
      )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          decoration: new BoxDecoration(
              border: Border(
                  top: BorderSide(
                      width: 1.0,
                      color: Color(0xFFFF111111).withOpacity(0.1)))),
          child: Row(
            children: <Widget>[
              new Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: new Icon(
                  Icons.home,
                  size: _bottomNavSize,
                  color: Colors.red,
                ),
              )),
              new Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: new Icon(
                  Icons.whatshot,
                  size: _bottomNavSize,
                  color: Colors.black45,
                ),
              )),
              new Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: new Icon(Icons.subscriptions,
                    size: _bottomNavSize, color: Colors.black45),
              )),
              new Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: new Icon(Icons.markunread,
                    size: _bottomNavSize, color: Colors.black45),
              )),
              new Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: new Icon(Icons.folder,
                    size: _bottomNavSize, color: Colors.black45),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
