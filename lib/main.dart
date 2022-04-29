import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/pages/sign_up.dart';
import 'package:shop/theme/custom_theme.dart';

import 'bloc/basket_bloc.dart';
import 'bloc/category_bloc.dart';
import 'bloc/order_bloc.dart';
import 'bloc/user_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return BlocProvider(
      create: (_) => UserBloc()..add(LoadUser()),
      child: BlocProvider(
        create: (_) => CategoryBloc(),
        child: BlocProvider(
          create: (_) => BasketBloc(),
          child: BlocProvider(
            create: (_) => OrderBloc(),
            child:  MaterialApp(
              theme: CustomTheme.lightTheme,
              home: const SignUp(),
              debugShowCheckedModeBanner: false,
            ),
          ),
        ),
      ),
    );
  }
}
