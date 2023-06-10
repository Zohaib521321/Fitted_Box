import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fitted Box"),
        ),
        body:
        Center(
            child: Row(children: [
              Expanded(
                child: FittedBox(
                  child: Text(
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                    maxLines: 1,
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ),
            ]))

    );
  }

}
