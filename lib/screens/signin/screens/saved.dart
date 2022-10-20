

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_service_app_ui/screens/signin/screens/utils.dart';

class SavedView extends StatelessWidget {
  const SavedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 22, 22),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'My Collections',
                style: GoogleFonts.heebo(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CollectionTile(
                        image:  'https://i.pinimg.com/564x/cc/dc/c5/ccdcc51f2c17adfd3d2a31aa25cbfc85.jpg',
                        name: 'Audi Model S',
                        rate: '20.0/hour',
                        location: 'Pittsburg Town'),
                    CollectionTile(
                        image: 'https://i.pinimg.com/564x/ac/62/d7/ac62d7609399271471257cc77f424340.jpg',
                        name: 'Mercedes Benz',
                        rate: '20.0/hour',
                        location: 'New Jersey'),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CollectionTile(
                        image:  'https://i.pinimg.com/564x/a7/61/6d/a7616d1b0493aaa35adc5391b8a0e586.jpg',
                        name: 'Toyota Supra',
                        rate: '46.0/hour',
                        location: 'Thomridge,Hawai'),
                    CollectionTile(
                        image: 'https://i.pinimg.com/564x/a9/76/18/a976182dad801543d030763f0d850f09.jpg',
                        name: 'Tesla',
                        rate: '25.0/hour',
                        location: 'Old Town Court'),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
