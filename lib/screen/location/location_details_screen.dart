import 'package:flutter/material.dart';
import 'nearby_response.dart';
import 'package:lottie/lottie.dart';

class LocationDetailsScreen extends StatelessWidget {
  final Results location;
  final Function(Results) onMarkLocation;

  const LocationDetailsScreen({
    Key? key,
    required this.location,
    required this.onMarkLocation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name ?? 'Location Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(55.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.network(
                'https://assets4.lottiefiles.com/packages/lf20_jif9vljs.json'),
            Text(
              'Name: ${location.name}',
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5F5BDC)),
            ),
            const SizedBox(height: 10),
            Text(
              'Address: ${location.vicinity}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                onMarkLocation(location);
                Navigator.pop(context);
              },
              icon: const Icon(Icons.map),
              label: const Text('Mark Location on Map'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                backgroundColor: const Color(0xFF5F5BDC),
              ),
            ),
          ],
        ),
      ),
    );
  }
}