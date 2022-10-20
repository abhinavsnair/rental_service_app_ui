import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CollectionTile extends StatelessWidget {
  final String image;
  final String name;
  final String rate;
  final String location;
  CollectionTile(
      {super.key,
      required this.image,
      required this.name,
      required this.rate,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 4, right: 4, bottom: 4),
        height: 180,
        width: 180,
        decoration: BoxDecoration(
            color: Colors.grey[850], borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.only(topLeft: Radius.circular(5)),
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover)),
            ),
            Text(
              name,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(
              '\$' + rate,
              style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                  size: 18,
                ),
                Text(
                  location,
                  style: TextStyle(color: Colors.grey[300], fontSize: 12),
                )
              ],
            )
          ],
        ));
  }
}
