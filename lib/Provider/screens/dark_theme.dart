// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../theme_changer_provider.dart';

class DarkThemeSccreen extends StatefulWidget {
  const DarkThemeSccreen({super.key});

  @override
  State<DarkThemeSccreen> createState() => _DarkThemeSccreenState();
}

class _DarkThemeSccreenState extends State<DarkThemeSccreen> {
  @override
  Widget build(BuildContext context) {
    final themeChangerProvider = Provider.of<ThemeChangerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ThemeChanger'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            RadioListTile<ThemeMode>(
              title: Text('Light Mode'),
              value: ThemeMode.light,
              groupValue: themeChangerProvider.themeMode,
              onChanged: themeChangerProvider.setTheme,
            ),
            RadioListTile<ThemeMode>(
              title: Text('Dark Mode'),
              value: ThemeMode.dark,
              groupValue: themeChangerProvider.themeMode,
              onChanged: themeChangerProvider.setTheme,
            ),
            RadioListTile<ThemeMode>(
              title: Text('System Mode'),
              value: ThemeMode.system,
              groupValue: themeChangerProvider.themeMode,
              onChanged: themeChangerProvider.setTheme,
            )
          ],
        ),
      ),
    );
  }
}
