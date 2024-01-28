import 'package:flutter/material.dart';
import 'package:test_questions_format/components/custom-button.dart';
import 'package:test_questions_format/screens/box-form.dart';
import 'package:test_questions_format/screens/radio-form.dart';
import 'package:test_questions_format/screens/slider-form.dart';

void main() {
  runApp(const MyApp());
}

final keyNavigator = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question format Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue, background: Colors.white),
        useMaterial3: true,
      ),
      navigatorKey: keyNavigator,
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/radio-format': (context) => RadioForm(),
        '/box-format': (context) => BoxForm(),
        '/slider-format': (context) => SliderForm()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prueba de formato",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text("Seleccione que desea probar", style: TextStyle(fontSize: 14)),
          CustomButton(() => Navigator.pushNamed(context, "/radio-format"),
              "Botón A", Icons.radio_button_checked),
          CustomButton(() => Navigator.pushNamed(context, "/box-format"),
              "Botón B", Icons.looks_one),
          CustomButton(() => Navigator.pushNamed(context, "/slider-format"),
              "Slider", Icons.linear_scale)
        ]),
      ),
    );
  }
}
