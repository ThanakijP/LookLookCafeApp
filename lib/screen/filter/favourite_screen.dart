import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Cafefav {
  final String name;
  final String location;
  final String description;
  final String imageUrl;

  Cafefav({
    required this.name,
    required this.location,
    required this.description,
    required this.imageUrl,
  });
}

class FavouriteScreen extends StatefulWidget {
  static const String routeName = '/favourite';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => FavouriteScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  final List<Cafefav> cafes = [
    Cafefav(
      name: 'The Outsider',
      location: '135/550 ตำบล ศาลายา อำเภอพุทธมณฑล นครปฐม 73170',
      description: 'ร้านกาแฟ',
      imageUrl:
          'https://p16-lemon8-sign-sg.ibyteimg.com/tos-alisg-v-a3e477-sg/3c40b64f8dbb4139a19d6ddce796f4d8~tplv-sdweummd6v-shrink:640:0:q50.webp?source=seo_middle_feed_list&x-expires=1713571200&x-signature=yn0rJKV0wX3Fe86smMxRX7CFTy8%3D',
    ),
    Cafefav(
      name: 'Dogdoss craft coffee',
      location: '135/332 ม.6 ต ตำบล ศาลายา อำเภอพุทธมณฑล นครปฐม 73170',
      description: 'ร้านกาแฟ',
      imageUrl:
          'https://p16-lemon8-va.ibyteimg.com/tos-alisg-v-a3e477-sg/baa32b33ab74443eb153f67b9ad05d47~tplv-tej9nj120t-origin.webp',
    ),
    Cafefav(
      name: 'CMD_Salaya',
      location: '135, 346 ศาลายา ซอย ๙ ตำบล ศาลายา อำเภอพุทธมณฑล นครปฐม 73170',
      description: 'ร้านกาแฟ',
      imageUrl: 'https://ak-d.tripcdn.com/images/1i60222345wkgrwvn7D71.jpg?proc=source/trip',
    ),
    Cafefav(
      name: 'Casa Lapin',
      location: '66 80 ตำบล ศาลายา อำเภอพุทธมณฑล นครปฐม 73170',
      description: 'ร้านกาแฟ',
      imageUrl: 'https://ak-d.tripcdn.com/images/1i65s22347r0ik5ds8937.jpg?proc=source/trip',
    ),
  ];

  late SharedPreferences _preferences;
  Set<String> _favoriteCafes = {};

    @override
  void initState() {
    super.initState();
    _loadFavoriteCafes();
  }

  Future<void> _loadFavoriteCafes() async {
    _preferences = await SharedPreferences.getInstance();
    setState(() {
      _favoriteCafes = _preferences.getStringList('favorite_cafes')?.toSet() ?? {};
    });
  }

  Future<void> _toggleFavoriteStatus(String name) async {
    setState(() {
      if (_favoriteCafes.contains(name)) {
        _favoriteCafes.remove(name);
      } else {
        _favoriteCafes.add(name);
      }
    });

    await _preferences.setStringList('favorite_cafes', _favoriteCafes.toList());
  }

  bool _isCafeFavorite(String name) {
    return _favoriteCafes.contains(name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favourite Cafe List')),
      body: ListView.builder(
        itemCount: cafes.length,
        itemBuilder: (context, index) {
          final cafe = cafes[index];
          final isFavorite = _isCafeFavorite(cafe.name);
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Card(
              child: InkWell(
                onTap: () {
                  if (index == 0) {
                    Navigator.pushNamed(
                      context,
                      '/theoutsider',
                    );
                  } else if (index == 1) {
                    Navigator.pushNamed(
                      context,
                      '/dogdosscraftcoffee',
                    );
                  } else if (index == 2) {
                    Navigator.pushNamed(
                      context,
                      '/cmdsalaya',
                    );
                  } else if (index == 3) {
                    Navigator.pushNamed(
                      context,
                      '/casalapin',
                    );    
                  } else {
                    Navigator.pushNamed(
                      context,
                      '/kokomilktoastcoffee',
                      arguments: cafe,
                    );
                  }
                },
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(cafe.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                cafe.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  isFavorite ? Icons.favorite : Icons.favorite_border,
                                  color: isFavorite ? Colors.red : null,
                                ),
                                onPressed: () {
                                  _toggleFavoriteStatus(cafe.name);
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            cafe.location,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            cafe.description,
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
