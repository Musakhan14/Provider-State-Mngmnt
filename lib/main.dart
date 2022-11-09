import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoingcard/Provider/count_provider.dart';
import 'package:shoingcard/Provider/example2_provider.dart';
import 'package:shoingcard/Provider/screens/count_example.dart';
import 'package:shoingcard/Provider/stateful.dart';
import 'package:shoingcard/cart/product_list.dart';
import 'package:shoingcard/provider1exmple/pages/exmple1_home_page.dart';

import 'Provider/favoriteprovider.dart';
import 'Provider/screens/dark_theme.dart';
import 'Provider/screens/exampl2_screen.dart';
import 'Provider/screens/favourite/favouritscreen.dart';
import 'Provider/theme_changer_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Example2Provider()),
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ThemeChangerProvider()),
        ChangeNotifierProvider(create: (_) => FavouritItemProvider()),
      ],
      child: Builder(
        builder: (BuildContext context) {
          final themeChangerProvider =
              Provider.of<ThemeChangerProvider>(context);
          return MaterialApp(
            themeMode: themeChangerProvider.themeMode,
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.red,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
            ),
            home: DarkThemeSccreen(),
          );
        },
      ),
    );
  }
}
