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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$userInput',
              style: Theme.of(context).textTheme.headline4,
            ),
          TextField(
              controller: _controller,
            ),
            ElevatedButton(
              onPressed: _displayInput,
              child: Text(
                'Display Input',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
