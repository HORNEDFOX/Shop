import 'package:flutter/material.dart';
import 'package:shop/pages/sign_up.dart';
import 'package:shop/theme/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: CustomTheme.lightTheme,
        home: const SignUp(),
        debugShowCheckedModeBanner: false,
    );
  }
}
