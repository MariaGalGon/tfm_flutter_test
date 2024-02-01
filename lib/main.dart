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
            seedColor: Colors.blue),
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
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.white)),
        backgroundColor: Color.fromRGBO(0, 97, 164, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Center(
          child: Column(children: [
            Text("Seleccione que desea probar", style: TextStyle(fontSize: 14)),
            CustomButton(
                () => Navigator.pushNamed(context, "/form",
                    arguments: "radio-label"),
                "Botón circular con etiqueta",
                Icons.radio_button_checked),
            CustomButton(
                () => Navigator.pushNamed(context, "/form", arguments: "radio"),
                "Botón circular",
                Icons.radio_button_checked),
            CustomButton(
                () => Navigator.pushNamed(context, "/form", arguments: "box"),
                "Botón cuadrado",
                Icons.looks_one),
            CustomButton(
                () => Navigator.pushNamed(context, "/form",
                    arguments: "slider-label-A"),
                "Slider A con etiqueta",
                Icons.linear_scale),
            CustomButton(
                () => Navigator.pushNamed(context, "/form",
                    arguments: "slider-label-B"),
                "Slider B con etiqueta",
                Icons.linear_scale)
          ]),
        ),
      ),
    );
  }
}
