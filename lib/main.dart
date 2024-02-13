import 'package:flutter/material.dart';
import 'package:test_questions_format/components/custom-button.dart';
import 'package:test_questions_format/screens/form-page.dart';

void main() {
  runApp(const MyApp());
}

final keyNavigator = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Questionnaire format',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      navigatorKey: keyNavigator,
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/form': (context) => FormPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Format test",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.white)),
        backgroundColor: Color.fromRGBO(0, 97, 164, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              Text("Choose what you want to try",
                  style: TextStyle(fontSize: 14)),
              CustomButton(
                  () => Navigator.pushNamed(context, "/form",
                      arguments: "radio-label"),
                  "Circular button with label",
                  Icons.radio_button_checked),
              CustomButton(
                  () =>
                      Navigator.pushNamed(context, "/form", arguments: "radio"),
                  "Circular button",
                  Icons.radio_button_checked),
              CustomButton(
                  () => Navigator.pushNamed(context, "/form", arguments: "box"),
                  "Square button",
                  Icons.looks_one),
              CustomButton(
                  () => Navigator.pushNamed(context, "/form",
                      arguments: "slider-label-A"),
                  "Slider A with label",
                  Icons.linear_scale),
              CustomButton(
                  () => Navigator.pushNamed(context, "/form",
                      arguments: "slider-label-B"),
                  "Slider B with label",
                  Icons.linear_scale)
            ]),
          ),
        ),
      ),
    );
  }
}
