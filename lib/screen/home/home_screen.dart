import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => HomeScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Home')),
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/background.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    child: Text('Location Screen'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                  ),
                  ElevatedButton(
                    child: Text('Cafe List'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/restaurant-listing');
                    },
                  ),
                  ElevatedButton(
                    child: Text('Favourite Cafe List'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/favourite');
                    },
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
