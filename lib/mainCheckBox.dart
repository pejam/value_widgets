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
      title: 'check box',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'check box page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool orangeVal = false;
  bool lemonVal = false;
  bool appleVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Orange"),
                    Checkbox(
                      value: orangeVal,
                      onChanged: (bool? newValue) {
                        setState(() {
                          orangeVal = newValue!;
                        });
                      },
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Lemon"),
                    Checkbox(
                      value: lemonVal,
                      onChanged: (bool? newValue) {
                        setState(() {
                          lemonVal = newValue!;
                        });
                      },
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Apple"),
                    Checkbox(
                      value: appleVal,
                      onChanged: (bool? newValue) {
                        setState(() {
                          appleVal = newValue!;
                        });
                      },
                    )
                  ],
                )
              ],
            ),
            Text("Orange : $orangeVal \n lemon $lemonVal \n Apple : $appleVal")
          ],
        ),
      ),
    );
  }
}
