// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:shoingcard/Provider/example2_provider.dart';

class Example2Screen extends StatefulWidget {
  const Example2Screen({super.key});

  @override
  State<Example2Screen> createState() => _Example1ScreenState();
}

class _Example1ScreenState extends State<Example2Screen> {
  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<Example2Provider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Example 2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<Example2Provider>(builder: (context, provider, child) {
            return Slider(
              max: 1,
              min: 0,
              value: provider.value,
              onChanged: (val) => provider.setValue(val),
              // min: 0,
              // max: 1,
              // value: provider.value,
              // onChanged: (val) {
              //   // this.value = value;
              //   provider.setValue(val);
              // }
            );
          }),
          Consumer<Example2Provider>(builder: (context, provider, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.yellow.withOpacity(provider.value)),
                    child: Center(
                      child: Text('Container 1'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(provider.value)),
                    child: Center(
                      child: Text('Container 1'),
                    ),
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
