import 'package:flutter/material.dart';
import 'package:food_location_app/screen/restaurant_listing/restaurant_listing_screen.dart';

class MoodOnCoffeeHouseDetailsScreen extends StatelessWidget {
  static const String routeName = '/moodoncoffeehouse';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => MoodOnCoffeeHouseDetailsScreen(), 
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mood on Coffee house')),
      body: Container(
        child: Column(
          children: [
            Container(
              width: 500,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://ak-d.tripcdn.com/images/1i6492224occtt8ht1FAE.jpg?proc=source/trip'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Mood on Coffee house',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 50),
            Text(
              '2 ซอย ทวีวัฒนา 22 แขวงศาลาธรรมสพน์ เขตทวีวัฒนา กรุงเทพมหานคร 10170',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 50),
            Text(
              'ร้านกาแฟ',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 70),
            ElevatedButton(
              child: Text('Location Screen'),
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
            ),
            // Add more details as needed
          ],
        ),
      ),
    );
  }
}
