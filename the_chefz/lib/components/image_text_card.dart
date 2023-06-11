import 'dart:math';

import 'package:flutter/material.dart';
import 'package:the_chefz/model/resturant.dart';

class ImageTextCard extends StatelessWidget {
  final Resturant resturantItem;
  const ImageTextCard({super.key, required this.resturantItem});

  @override
  Widget build(BuildContext context) {
    // randome 0 and 1
    final random = Random();
    final randomIndex = random.nextInt(2);
    return Card(
        child: Stack(
      children: [
        // circle avatar

        Column(
          children: [
            Image.network(
              '${resturantItem.imgURL}',
              height: 120,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            ListTile(
              title: Text('${resturantItem.name}'),
              subtitle: Text('Eat good ha| حفله بفمك ايت ها.'),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.network(
                  '${resturantItem.imgURL}',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
        if (randomIndex == 0)
          Positioned(
            top: 90,
            left: 20,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 27,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://cdn-icons-png.flaticon.com/512/1169/1169925.png',
                ),
                radius: 25,
              ),
            ),
          ),
      ],
    ));
  }
}
