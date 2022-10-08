import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Circle Progress",
      theme: ThemeData(primaryColor: Colors.blueGrey),
      home: const MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyState();
}

class MyState extends State<MyHomePage> {
  bool isShowing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Progress Demo'),
      ),
      body: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: isShowing,
                onChanged: (bool? newValue) {
                  setState(() {
                    isShowing = newValue!;
                  });
                },
              ),
              if (isShowing == true)
                CircularProgressIndicator()
              else
                Container()
            ],
          ),
        ),
      ),
    );
  }
}
