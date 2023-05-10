import 'package:flutter/material.dart';
import 'package:food_location_app/screen/filter/favourite_screen.dart';
import 'package:food_location_app/screen/location/location_screen.dart';
import 'package:food_location_app/screen/restaurant_details/casalapin.dart';
import 'package:food_location_app/screen/restaurant_details/cmdsalaya.dart';
import 'package:food_location_app/screen/restaurant_details/dogdosscraftcoffee.dart';
import 'package:food_location_app/screen/restaurant_details/glomglorm.dart';
import 'package:food_location_app/screen/restaurant_details/petrichorcafe.dart';
import 'package:food_location_app/screen/restaurant_details/restaurant_details_screen.dart';
import 'package:food_location_app/screen/restaurant_details/kinscafe.dart';
import 'package:food_location_app/screen/restaurant_details/kokomilktoastcoffee.dart';
import 'package:food_location_app/screen/restaurant_details/agaficafe.dart';
import 'package:food_location_app/screen/restaurant_details/moodoncoffeehouse.dart';
import 'package:food_location_app/screen/restaurant_details/theoutsider.dart';
import 'package:food_location_app/screen/restaurant_listing/restaurant_listing_screen.dart';
import 'package:food_location_app/screen/screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The Route is: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
      case FavouriteScreen.routeName:
        return FavouriteScreen.route();
      case RestaurantListingScreen.routeName:
        return RestaurantListingScreen.route();  
      case RestaurantDetailsScreen.routeName:
        return RestaurantDetailsScreen.route();
        
      case TheOutsiderDetailsScreen.routeName:
        return TheOutsiderDetailsScreen.route();
      case KinsCafeDetailsScreen.routeName:
        return KinsCafeDetailsScreen.route();
      case KokomilktoastCoffeeDetailsScreen.routeName:
        return KokomilktoastCoffeeDetailsScreen.route();
      case DogdossCraftCoffeeDetailsScreen.routeName:
        return DogdossCraftCoffeeDetailsScreen.route();  
      case AGAFICafeDetailsScreen.routeName:
        return AGAFICafeDetailsScreen.route();
      case MoodOnCoffeeHouseDetailsScreen.routeName:
        return MoodOnCoffeeHouseDetailsScreen.route();
      case PETRICHORCafeDetailsScreen.routeName:
        return PETRICHORCafeDetailsScreen.route();  
      case CasaLapinDetailsScreen.routeName:
        return CasaLapinDetailsScreen.route();  
      case GlomGlormDetailsScreen.routeName:
        return GlomGlormDetailsScreen.route();
      case CMDSalayaDetailsScreen.routeName:
        return CMDSalayaDetailsScreen.route();         
        break;
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(appBar: AppBar(title: Text('error'))),
      settings: RouteSettings(name: '/error'),
    );
  }
}