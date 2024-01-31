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
      title: 'Formato cuestionario TFM',
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
        title: Text("Prueba de formato",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text("Seleccione que desea probar", style: TextStyle(fontSize: 14)),
          CustomButton(
              () => Navigator.pushNamed(context, "/form", arguments: "radio-label"),
              "Botón A con etiqueta",
              Icons.radio_button_checked),
          CustomButton(() => Navigator.pushNamed(context, "/form", arguments: "radio"),
              "Botón A", Icons.radio_button_checked),
          CustomButton(() => Navigator.pushNamed(context, "/form", arguments: "box"),
              "Botón B", Icons.looks_one),
          CustomButton(() => Navigator.pushNamed(context, "/form", arguments: "slider-label"),
              "Slider con etiqueta", Icons.linear_scale)
        ]),
      ),
    );
  }
}
