import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HNGi8 Stage 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String userInput = "";
  TextEditingController _controller = TextEditingController();

  final Shader linearGradient = LinearGradient(
    colors: [Colors.blueAccent, Colors.greenAccent, Colors.redAccent],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  void _displayInput() {
    setState(() {
      userInput = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HNGi8 Stage 2"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        height: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$userInput',
                  style:
                      TextStyle(foreground: Paint()..shader = linearGradient, fontSize: 25.0),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "Enter text",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: _displayInput,
                  child: Text(
                    'Click Here to Display',
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Sponsored By',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyDMLtg92ewVxHzNfHb6NkaL7nONefM21RWKQqCWdTH82GxFd2i_e-jWAUvqdNT8BdrJs&usqp=CAU",
                        height: 50,
                        width: 50,
                      ),
                      Image.network(
                        "https://media-exp1.licdn.com/dms/image/C4D0BAQEdFHkGF4d16w/company-logo_200_200/0/1614476081317?e=2159024400&v=beta&t=c80f3kjyEhY_YyI6AjMs9GhxFZ6LLy7X1d13ltRXvlg",
                        height: 50,
                        width: 50,
                      ),
                      Image.network(
                        "https://ingressive.org/wp-content/uploads/2020/08/I4G-Logo-Main-1024x248.png",
                        height: 50,
                        width: 50,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
