import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UiDesign(title: 'Flutter Demo Home Page'),
    );
  }
}

class UiDesign extends StatefulWidget {
  const UiDesign({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<UiDesign> createState() => _UiDesignState();
}

class _UiDesignState extends State<UiDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/images/imag.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(25),
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Oeschinem Lake Campground",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Spacer(flex: 1),
                    Text(
                      "Kandersteg, Swtzerland",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.red),
                    Text("41"),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.blue,
                      size: 30,
                    ),
                    Text(
                      "CALL",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.flight,
                      color: Colors.blue,
                      size: 30,
                    ),
                    Text(
                      "ROUTE",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.blue,
                      size: 30,
                    ),
                    Text(
                      "SHARE",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Lake Oeschinem lies at the foot of the bloemli selp in the Bemese Alps. Situated 1,578 meters above sea level,it is one of the larger Alpine Lakes.A gendola ride from Kandersteg,followed by a half-hour walk througth pastures and pine forest,leads you to the lake ,which warms to 20 degrees Celsius in the summer,Activities enjoyed here include rowing, and riding the summer to beggan fun.",
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
