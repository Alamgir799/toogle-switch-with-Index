import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var category = "video";
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ToggleSwitch(
              minWidth: 90.0,
              minHeight: 90.0,
              fontSize: 16.0,
              initialLabelIndex: value,
              activeBgColor: [Colors.green],
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.grey[900],
              totalSwitches: 3,
              labels: const ['video', 'podcast', 'blog'],
              onToggle: (index) {
                //  print('switched to: $index');
                index == 0
                    ? category = "video"
                    : index == 1
                        ? category = "podcast"
                        : category = "blog";
                value = index!;
                setState(() {

                });
              },
            ),
            SizedBox(height: 20,),
            (value == 0)
                ? Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  )
                : (value == 1)
                    ? Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      )
                    : Container(
                        height: 100,
                        width: 100,
                        color: Colors.yellow,
                      ),
          ],
        ),
      )),
    );
  }
}
