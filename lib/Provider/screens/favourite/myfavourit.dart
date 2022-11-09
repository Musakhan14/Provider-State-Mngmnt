import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../../favoriteprovider.dart';

class MyFavoritItem extends StatefulWidget {
  const MyFavoritItem({super.key});

  @override
  State<MyFavoritItem> createState() => _MyFavoritItemState();
}

class _MyFavoritItemState extends State<MyFavoritItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite App'),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back)),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Consumer<FavouritItemProvider>(
                builder: (context, provider, child) {
              return ListView.builder(
                  itemCount: provider.selectedItem.length,
                  itemBuilder: (context, index) {
                    return Consumer<FavouritItemProvider>(
                      builder: (context, provider, child) {
                        return ListTile(
                          onTap: () {
                            if (provider.selectedItem.contains(index)) {
                              provider.removeItem(index);
                            } else {
                              provider.addItem(index);
                            }
                            // selectedItem.add(index);
                          },
                          title: Text('Item ${index.toString()}'),
                          trailing: Icon(provider.selectedItem.contains(index)
                              ? Icons.favorite
                              : Icons.favorite_border_outlined),
                        );
                      },
                    );
                  });
            }),
          )
        ],
      ),
    );
  }
}
