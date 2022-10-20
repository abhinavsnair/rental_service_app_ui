

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  List logo = [
    'https://pngimg.com/uploads/bmw_logo/small/bmw_logo_PNG19713.png',
    'https://pngimg.com/uploads/ferrari/ferrari_PNG10665.png',
    'https://pngimg.com/uploads/ford/ford_PNG12229.png',
    'https://pngimg.com/uploads/kia/kia_PNG2.png',
    'https://pngimg.com/uploads/porsche_logo/porsche_logo_PNG6.png',
    'https://pngimg.com/uploads/mercedes_logos/mercedes_logos_PNG1.png'
  ];

  List brand = ['BMW', 'Ferrari', 'Ford', 'Kia', 'Porsche', '  Mercedes'];
  List subname = [
    '','','','','','Benz'
  ];
  List image = [
    'https://i.pinimg.com/564x/cc/dc/c5/ccdcc51f2c17adfd3d2a31aa25cbfc85.jpg',
    'https://i.pinimg.com/564x/ac/62/d7/ac62d7609399271471257cc77f424340.jpg',
    'https://i.pinimg.com/564x/a7/61/6d/a7616d1b0493aaa35adc5391b8a0e586.jpg',
    'https://i.pinimg.com/564x/a9/76/18/a976182dad801543d030763f0d850f09.jpg'
  ];
  List name = ['Audi Model S', 'Mercedes Benz', 'Toyota Supra', 'Tesla'];
  List rate = ['20.0/hour', '18.0/hour', '46.0/hour', '25.0/hour'];
  List location = [
    'Pittsburg Town',
    'New Jersey',
    'Thomridge,Hawai',
    'Old Town Court'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 22, 22),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[850],
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: 22,
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your location',
                              style: TextStyle(color: Colors.grey[500], fontSize: 13),
                            ),
                            const Text(
                              'Willington, Canada',
                              style: TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/736x/6c/92/13/6c9213b9a2bc6c5702198076b40f9cdd.jpg'),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(children: [
                      const Text(
                        'Select or search your\n   favourite vehicle ',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Container(
                                  width: 260,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[600],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: TextField(
                                    decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide.none
                                    ),
                                        prefixIcon: const Icon(
                                          Icons.search,
                                          color: Colors.white,
                                        ),
                                        hintText: 'Search here',
                                        hintStyle:
                                            TextStyle(color: Colors.grey[300])),
                                  )),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                  child: Icon(
                                Icons.menu,
                                color: Colors.grey[800],
                              )),
                            )
                          ],
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Top Brands',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(color: Colors.grey[500]),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(6, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 20,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.network(
                                  logo[index],
                                  height: 40,
                                ),
                                Center(
                                  child: Text(
                                    brand[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: 12),
                                  ),
                                ),  Center(
                                  child: Text(
                                    subname[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Best Cars',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(color: Colors.grey[500]),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(4, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            padding: const EdgeInsets.only(left: 3, right: 3),
                            height: 140,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.grey[850],
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 100,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: NetworkImage(image[index]),
                                          fit: BoxFit.fitWidth)),
                                ),
                                Text(
                                  name[index],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  '\$' + rate[index],
                                  style: const TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    Text(
                                      location[index],
                                      style: TextStyle(
                                          color: Colors.grey[300], fontSize: 12),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
