import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'creditCertification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      routes: {
        '/': (BuildContext context) =>
            MyHomePage(title: 'Flutter Demo Home Page'),
        '/creditCert': (BuildContext context) => CreditCertificationScreen()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _bottomCurIndex = 0;

  final tabs = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Rocket Loan",
          style: TextStyle(
              fontSize: 50,
              color: Colors.white,
              decorationStyle: TextDecorationStyle.dashed),
        ),
        Text("some"),
        Text("some2")
      ],
    ),
    Center(child: Text("Next"))
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 19, 37, 1),
      bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.white10,
              textTheme: Theme
                  .of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.yellow))),
        child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          child: BottomNavigationBar(
              currentIndex: _bottomCurIndex,
              unselectedItemColor: Colors.grey,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: ClipRRect(
                      child: Icon(Icons.home_filled),
                      borderRadius: BorderRadius.circular(200),
                    ),
                    title: Text("Home")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), title: Text("Me"))
              ],
              onTap: (index) {
                setState(() {
                  _bottomCurIndex = index;
                });
              }),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(23, 20, 23, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Rocket Loan",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    decorationStyle: TextDecorationStyle.dashed,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: EdgeInsets.only(top: 25, bottom: 25),
              child: Text(
                "Estimated amount",
                style: TextStyle(fontSize: 18, color: Colors.white60),
              ),
            ),
            Text(
              "₦ 50,000",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(26, 231, 167, 1)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Container(
                  color: Colors.white10,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Insert rate as low as 0.08% per day",
                      style: TextStyle(color: Colors.white60, fontSize: 10),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 5.0, 0, 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: MaterialButton(
                  minWidth: double.infinity,
                  onPressed: () {
                    Navigator.pushNamed(context, '/creditCert');
                  },
                  color: Color.fromRGBO(0, 175, 255, 1),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child: Center(
                      child: Text(
                        'GET AMOUNT NOW',
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 20),
              child: Text(
                "Tips on loan steps",
                style: TextStyle(
                    color: Colors.white60, fontWeight: FontWeight.bold),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image(
                          image: AssetImage("assets/img1.png"),
                          fit: BoxFit.cover,
                          height: 50,
                          width: 50,
                        ),
                        Text(
                          "Application",
                          style: TextStyle(color: Colors.white60),
                        ),
                      ],
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image(
                            image: AssetImage("assets/img2.png"),
                            fit: BoxFit.cover,
                            height: 50,
                            width: 50,
                          ),
                          Text(
                            "Get quota",
                            style: TextStyle(color: Colors.white60),
                          )
                        ]),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                            image: AssetImage("assets/img3.png"),
                            fit: BoxFit.cover,
                            height: 50,
                            width: 50,
                          ),
                          Text(
                            "Rect account",
                            style: TextStyle(color: Colors.white60),
                          ),
                        ])
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 20),
              child: Center(
                  child: Text(
                "- Friends cooperation and sincere service -",
                style: TextStyle(color: Colors.white60),
              )),
            ),
          ]),
        ),
      ),
    );
  }
}
