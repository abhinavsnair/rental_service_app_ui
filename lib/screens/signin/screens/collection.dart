

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CollectionView extends StatelessWidget {
   CollectionView({super.key});
  List name = ['Audi Model S', 'Mercedes Benz', 'Toyota Supra', 'Tesla'];
  List location = [
    'Pittsburg Town',
    'New Jersey',
    'Thomridge,Hawai',
    'Old Town Court'
  ];
  List image = [
    'https://i.pinimg.com/564x/cc/dc/c5/ccdcc51f2c17adfd3d2a31aa25cbfc85.jpg',
    'https://i.pinimg.com/564x/ac/62/d7/ac62d7609399271471257cc77f424340.jpg',
    'https://i.pinimg.com/564x/a7/61/6d/a7616d1b0493aaa35adc5391b8a0e586.jpg',
    'https://i.pinimg.com/564x/a9/76/18/a976182dad801543d030763f0d850f09.jpg'
  ];
  
  List type = [
    'Manual',
    'Automatic',
    'Automatic',
    'Manual',
  ];
  List rate = ['20.0/hour', '18.0/hour', '46.0/hour', '25.0/hour'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 22, 22),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.circular(12)),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(8),
                      border: const OutlineInputBorder(borderSide: BorderSide.none),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: 'Search your favorite car',
                      hintStyle: TextStyle(color: Colors.grey[300]),
                    ),
                  ),
                ),
              ),
              Column(
                children: List.generate(4, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15),
                              ),
                              const SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.white,
                                    size: 15,
                                  
                                  ),
                                  const SizedBox(width: 5,),
                                  
                                  Text(
                                    location[index],
                                    style: TextStyle(
                                        color: Colors.grey[300], fontSize: 13),
                                  )
                                ],
                              )
                            ],
                          ),
                          Container(
                            height: 180,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        image[index]),
                                    fit: BoxFit.cover)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    '2 passengers',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.settings,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                  type[index],
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Text(
                                '\$'+rate[index],
                                style: const TextStyle(
                                  fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
