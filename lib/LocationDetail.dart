import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SlidingUpPanelExample"),
      ),
      body: SlidingUpPanel(
        borderRadius: BorderRadius.circular(60),
        parallaxEnabled: true,
        panel: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Chip(
                label: Text(
                  "Hi,",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: "Poppinsbold",
                  ),
                ),
                backgroundColor: Color(0xFF1d3557),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "I am\nBack !",
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.black,
                  fontFamily: "poppinsbold",
                  height: 1,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Top Locations of Asia",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF3640ff),
                  fontFamily: "Poppinsbold",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              ),
            ],
          ),
        ),
        body: Center(
          child: Image(
            image: AssetImage('assets/images/vacation1.jpeg'),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
