import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:shoingcard/provider1exmple/providers/exmple1_home_provider.dart';

class Ex1HomePage extends StatefulWidget {
  const Ex1HomePage({super.key});

  @override
  State<Ex1HomePage> createState() => _Ex1HomePageState();
}

class _Ex1HomePageState extends State<Ex1HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: ChangeNotifierProvider<Example1HomePageProvider>(
          create: (context) => Example1HomePageProvider(),
          child: Consumer<Example1HomePageProvider>(
            builder: (context, provider, child) {
              return Column(
                children: [
                  Text(
                    provider.eligibilityMessage,
                    style: TextStyle(
                        color: (provider.isEligilble == true)
                            ? Colors.green
                            : Colors.red),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: 'Enter Your Age'),
                    onChanged: (value) {
                      provider.checkEligibility(int.parse(value));
                    },
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
