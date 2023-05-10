import 'package:flutter/material.dart';
import 'package:food_location_app/screen/restaurant_listing/restaurant_listing_screen.dart';

class PETRICHORCafeDetailsScreen extends StatelessWidget {
  static const String routeName = '/petrichorcafe';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => PETRICHORCafeDetailsScreen(), 
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PETRICHOR cafe')),
      body: Container(
        child: Column(
          children: [
            Container(
              width: 500,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://img.wongnai.com/p/1920x0/2023/03/13/8675cb4a92e344f9887257fca41663dd.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              'PETRICHOR cafe',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 50),
            Text(
              '88 หมู่2 ถนน ทวีวัฒนา แขวงทวีวัฒนา เขตทวีวัฒนา กรุงเทพมหานคร 10170',
              style: TextStyle(
                fontSize: 25,
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
            SizedBox(height: 100),
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
