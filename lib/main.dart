import 'package:fintech/widgets/general/app-layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Xhino Fintech',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          "/": (context) => TabLayout(),
        });
  }
}
