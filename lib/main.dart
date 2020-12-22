import 'package:flutter/material.dart';
import 'package:profilepage/LocationDetail.dart';
import 'package:profilepage/models/LocationItemModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: ThemeData(
          fontFamily: "poppins",
        ));
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<LocationItemModel> locations = [
    LocationItemModel(
      image: "assets/images/slider1.jpeg",
      name: "Location",
    ),
    LocationItemModel(
      image: "assets/images/slider2.jpeg",
      name: "Location",
    ),
    LocationItemModel(
      image: "assets/images/slider3.jpeg",
      name: "Location",
    ),
    LocationItemModel(
      image: "assets/images/slider4.jpeg",
      name: "Location",
    ),
    LocationItemModel(
      image: "assets/images/slider5.jpeg",
      name: "Location",
    ),
    LocationItemModel(
      image: "assets/images/slider6.jpeg",
      name: "Location",
    ),
    LocationItemModel(
      image: "assets/images/slider7.jpeg",
      name: "Location",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image(
              image: AssetImage('assets/images/island1.jpg'),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 300,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Ikhsan Nur",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 200,
                    child: ListView.builder(
                      itemCount: locations.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, i) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => LocationDetail(),
                              ),
                            );
                          },
                          child: Container(
                            width: 170,
                            margin: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 40,
                                    color: Color(0x99000000),
                                    offset: Offset(4, 20),
                                  ),
                                ]),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image(
                                    width: 170,
                                    height: 170,
                                    fit: BoxFit.cover,
                                    image: AssetImage(locations[i].image),
                                  ),
                                ),
                                Text(locations[i].name),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
