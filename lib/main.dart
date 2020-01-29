import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rickandmorty_mobx/controllers/home_controller.dart';
import 'package:rickandmorty_mobx/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => HomeController(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
