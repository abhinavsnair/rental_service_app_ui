import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rental_service_app_ui/screens/homepage.dart';

class profileView extends StatelessWidget {
  profileView({super.key});

  List icon = [
    const Icon(Icons.access_time_rounded),
    const Icon(Icons.payment),
    const Icon(Icons.help_outline_outlined),
    const Icon(Icons.menu_book_outlined),
    const Icon(Icons.settings),
    const Icon(Icons.headphones),
  ];
  List text = [
    'Rides history',
    'Payment Methods',
    'FAQ',
    'Terms and Conditions',
    'App Settings',
    'Support Center'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 22, 22),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(
                        'https://i.pinimg.com/736x/6c/92/13/6c9213b9a2bc6c5702198076b40f9cdd.jpg'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Smith Williams',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text('smithwilliams@gmail.com',
                          style: TextStyle(color: Colors.grey, fontSize: 13))
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(164, 10, 85, 88),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.car_rental,
                            color: Color.fromARGB(255, 78, 162, 231),
                            size: 33,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '2451',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 78, 162, 231),
                                fontSize: 18),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Total km',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 78, 162, 231),
                                fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 120,
                    width: 180,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(164, 10, 85, 88),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.motorcycle_sharp,
                          color: Color.fromARGB(255, 78, 162, 231),
                          size: 33,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '15',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 78, 162, 231),
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Total rides',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 78, 162, 231),
                              fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: ((context, index) {
                    return ListTile(
                      leading: icon[index],
                      iconColor: Colors.white,
                      title: Text(
                        text[index],
                        style:
                            const TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    );
                  }),
                  separatorBuilder: ((context, index) {
                    return Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey[800],
                    );
                  }),
                  itemCount: text.length,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  },
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        'Logout',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
