import 'package:flutter/material.dart';
import 'package:food_location_app/screen/restaurant_listing/restaurant_listing_screen.dart';

class CasaLapinDetailsScreen extends StatelessWidget {
  static const String routeName = '/casalapin';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => CasaLapinDetailsScreen(), 
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Casa Lapin Specialty Coffee x Salaya One')),
      body: Container(
        child: Column(
          children: [
            Container(
              width: 500,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://ak-d.tripcdn.com/images/1i65s22347r0ik5ds8937.jpg?proc=source/trip'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Casa Lapin Specialty Coffee x Salaya One',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 50),
            Text(
              '66 80 ตำบล ศาลายา อำเภอพุทธมณฑล นครปฐม 73170',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 50),
            Text(
              'ร้านกาแฟ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 80),
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
