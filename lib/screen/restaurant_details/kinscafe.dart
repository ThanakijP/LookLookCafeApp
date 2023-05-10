import 'package:flutter/material.dart';
import 'package:food_location_app/screen/restaurant_listing/restaurant_listing_screen.dart';

class KinsCafeDetailsScreen extends StatelessWidget {
  static const String routeName = '/kinscafe';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => KinsCafeDetailsScreen(), 
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kins cafe')),
      body: Container(
        child: Column(
          children: [
            Container(
              width: 500,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://p16-lemon8-sign-sg.ibyteimg.com/tos-alisg-v-a3e477-sg/75d71de9dc0a41ca9d34841add3731e2~tplv-sdweummd6v-shrink:1080:0:q50.webp?source=seo_feed_list&x-expires=1703376000&x-signature=Nj4A7m1vgWd1w7UeOlI43xKUa9Y%3D'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Kins cafe',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 50),
            Text(
              '200/28 ตรงข้าม ม.มหิดล, ตำบล ศาลายา อำเภอพุทธมณฑล นครปฐม 73170',
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
