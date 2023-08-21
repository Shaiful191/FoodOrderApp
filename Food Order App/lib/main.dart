import 'package:flutter/material.dart';

import 'added.dart';
import 'search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, title: 'Demeo app', home: Homepage());
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final foodList = const [
    {
      'img': 'images/pizza.jpg',
      'name': 'Pizza'
    },
    {
      'img': 'images/bargar.jpg',
      'name': 'Bargar'
    },
    {
      'img': 'images/fried_chicken.jpg',
      'name': 'FriedChicken'
    },
    {
      'img': 'images/fuska.jpg',
      'name': 'Fuska'
    },
    {
      'img': 'images/Kacchi_Biryani.jpg',
      'name': 'Kacchi'
    },
    {
      'img': 'images/chicken_biryani.jpg',
      'name': 'Biryani'
    },
    {
      'img': 'images/ice_cream.jpg',
      'name': 'Ice Cream'
    },
    {
      'img': 'images/cake2.jpg',
      'name': 'Cake'
    },
  ];
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange[300],
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Food.com',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchS()));
                
              },
            )
          ],
        ),
        drawer: Drawer(
          child: Container(
              height: 700,
              child: Column(
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Image.asset(
                          'images/food.jpg',
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Text(
                            'Food.com',
                            style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.deepOrange[300],
                    leading: Icon(Icons.person),
                    title: Text('Profile', style: TextStyle(fontSize: 20)),
                    subtitle: Text('Edit Your information'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(
                    thickness: 1,
                    height: 0,
                    color: Colors.grey,
                  ),
                  ListTile(
                    tileColor: Colors.deepOrange[300],
                    leading: Icon(Icons.notifications),
                    title: Text('Notifications', style: TextStyle(fontSize: 20)),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(
                    thickness: 1,
                    height: 0,
                    color: Colors.grey,
                  ),
                  ListTile(
                    tileColor: Colors.deepOrange[300],
                    leading: Icon(Icons.settings),
                    title: Text('Settings', style: TextStyle(fontSize: 20)),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              )),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            foodList.length,
            (index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  elevation: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    height: 200,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset(
                            foodList[index]['img'],
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  foodList[index]['name'],
                                  style: TextStyle(fontSize: 15),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.deepOrange[300],
                                    onPrimary: Colors.black,
                                  ),
                                  child: Icon(Icons.shopping_cart),
                                  onPressed: () {
                                    
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Added()));
                                  },
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
