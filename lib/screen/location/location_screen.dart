import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'user_current_location.dart';

class LocationScreen extends StatelessWidget {
  static const String routeName = '/location';
  
  late GoogleMapController _googleMapController;

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => LocationScreen(), 
      settings: RouteSettings(name: routeName),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: GoogleMap(
              myLocationButtonEnabled: true,
              initialCameraPosition: CameraPosition(
                target: LatLng(13.7944, 100.3247,), 
                zoom: 15
              ),
            ),
          ),
          Positioned(
            bottom: 50, 
            left: 20, 
            right: 20, 
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF150E40)),
                child: Text('User current location'), 
                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const CurrentLocation();
              }));},
                
              ),
            ),
          ),
          Positioned(
            top: 30, 
            left: 20, 
            right: 20, 
            child: LocationSearchBox(),
          )
        ],
      ),
      appBar: AppBar(title: Text('Location')),
      /*body: Center(
        child: ElevatedButton(
          child: Text('Home Screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          }, 
        ),
      ),*/
    );
  }
}


class LocationSearchBox extends StatelessWidget {
  const LocationSearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true, 
          fillColor: Colors.white,
          hintText: 'Enter Your Location',
          suffixIcon: Icon(Icons.search),
          contentPadding: 
            const EdgeInsets.only(left: 20, bottom: 5, right: 5),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}