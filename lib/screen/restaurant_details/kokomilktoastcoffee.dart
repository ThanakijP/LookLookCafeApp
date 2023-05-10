import 'package:flutter/material.dart';
import 'package:food_location_app/screen/restaurant_listing/restaurant_listing_screen.dart';

class KokomilktoastCoffeeDetailsScreen extends StatelessWidget {
  static const String routeName = '/kokomilktoastcoffee';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => KokomilktoastCoffeeDetailsScreen(), 
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kokomilk toast & Coffee')),
      body: Container(
        child: Column(
          children: [
            Container(
              width: 500,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://mustudent.mahidol.ac.th/wp-content/uploads/2023/01/E.KOKOMILK-toast-coffee.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Kokomilk toast & Coffee',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 50),
            Text(
              '999 หมู่5 ตึกวิทยาลัยศาสนศึกษา มหาวิทยาลัยมหิดล ตำบลศาลายา อำเภอพุทธมณฑล นครปฐม 73170',
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
            SizedBox(height: 50),
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
