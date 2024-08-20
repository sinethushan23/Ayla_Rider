import 'package:ayla/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class home extends StatelessWidget {
  final List<String> imgList = [
    'lib/assest/ad1.jpeg', // ads or images
    'lib/assest/ad2.jpeg',
    'lib/assest/ad3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),

          // my profile action button
          actions: [
            IconButton(
              icon: Icon(Icons.person_pin),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.car_rental), text: 'Ride'),
              Tab(icon: Icon(Icons.hotel_rounded), text: 'Accommodation'),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                title: Text('Settings'),
                onTap: () {
                  // Handle settings tap
                },
              ),
              ListTile(
                title: Text('Logout'),
                onTap: () {
                  // Handle logout tap
                },
              ),
              ListTile(
                title: Text('Logout'),
                onTap: () {
                  // Handle logout tap
                },
              ),
              ListTile(
                title: Text('Logout'),
                onTap: () {
                  // Handle logout tap
                },
              ),
              ListTile(
                title: Text('Logout'),
                onTap: () {
                  // Handle logout tap
                },
              ),
              ListTile(
                title: Text('About'),
                onTap: () {
                  // Handle about tap
                },
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            // ads bar slider
            SizedBox(
              height: 10,
            ),
            CarouselSlider.builder(
              itemCount: imgList.length,
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.7,
                initialPage: 1,
              ),
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage(imgList[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),

            //add promotions or coupons
            SizedBox(
              height: 22,
            ),
            Text(
              "Today's Promotions",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            CarouselSlider.builder(
              itemCount: imgList.length,
              options: CarouselOptions(
                height: 100.0,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.7,
                initialPage: 1,
              ),
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage(imgList[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),

            SizedBox(
              height: 20,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  RidePage(), // Ride page
                  AccommodationPage(), // Accommodation page
                ],
              ),
            ),

            // tab bar
          ],
        ),
      ),
    );
  }
}

// Ride page code goes here
class RidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Text(
              'Find your nearest ride',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(
                bottom: 12.0), // Optional padding from the bottom

            child: button_widget(
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              foregroundColor: Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
              fontWeight: FontWeight.bold,
              buttonWidth: 300,
              buttonHeight: 50,
              buttonText: 'Find your ride',
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ),
        ),
      ],
    );
  }
}

// accomodation page code goes here
class AccommodationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Text(
              'Find your nearest accommodation',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(
                bottom: 12.0), // Optional padding from the bottom
            child: button_widget(
              backgroundColor: Color.fromARGB(255, 11, 11, 11),
              foregroundColor: Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
              fontWeight: FontWeight.bold,
              buttonWidth: 300,
              buttonHeight: 50,
              buttonText: 'Find your accomodation ',
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ),
        ),
      ],
    );
  }
}
