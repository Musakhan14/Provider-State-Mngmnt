// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class FavouritScreen extends StatefulWidget {
//   const FavouritScreen({super.key});

//   @override
//   State<FavouritScreen> createState() => _FavouritScreenState();
// }

// class _FavouritScreenState extends State<FavouritScreen> {
//   List<int> selectedItem = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Favourite App'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//                 itemCount: 133,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     onTap: () {
//                       selectedItem.add(index);
//                       setState(() {});
//                     },
//                     title: Text('Item ${index.toString()}'),
//                     trailing: Icon( selectedItem.contains(index)
//                         ? Icons.favorite
//                         : Icons.favorite_border_outlined),
//                   );
//                 }),
//           )
//         ],
//       ),
//     );
//   }
// }
////////////////////////////////////////////////////////////////////////////////////

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../../favoriteprovider.dart';
import 'myfavourit.dart';

class FavouritScreen extends StatefulWidget {
  const FavouritScreen({super.key});

  @override
  State<FavouritScreen> createState() => _FavouritScreenState();
}

class _FavouritScreenState extends State<FavouritScreen> {
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite App'),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyFavoritItem()));
              },
              child: Icon(Icons.favorite)),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 133,
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
                }),
          )
        ],
      ),
    );
  }
}
