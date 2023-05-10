import 'package:flutter/material.dart';

class Cafe {
  final String name;
  final String location;
  final String description;
  final String imageUrl;

  Cafe({
    required this.name,
    required this.location,
    required this.description,
    required this.imageUrl,
  });
}

class RestaurantListingScreen extends StatelessWidget {
  static const String routeName = '/restaurant-listing';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => RestaurantListingScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  final List<Cafe> cafes = [
    Cafe(
      name: 'The Outsider',
      location: '135/550 ตำบล ศาลายา อำเภอพุทธมณฑล นครปฐม 73170',
      description: 'ร้านกาแฟ',
      imageUrl: 'https://p16-lemon8-sign-sg.ibyteimg.com/tos-alisg-v-a3e477-sg/3c40b64f8dbb4139a19d6ddce796f4d8~tplv-sdweummd6v-shrink:640:0:q50.webp?source=seo_middle_feed_list&x-expires=1713571200&x-signature=yn0rJKV0wX3Fe86smMxRX7CFTy8%3D',
    ),
    Cafe(
      name: 'Kins cafe',
      location: '200/28 ตรงข้าม ม.มหิดล, ตำบล ศาลายา อำเภอพุทธมณฑล นครปฐม 73170',
      description: 'ร้านกาแฟ',
      imageUrl: 'https://p16-lemon8-sign-sg.ibyteimg.com/tos-alisg-v-a3e477-sg/75d71de9dc0a41ca9d34841add3731e2~tplv-sdweummd6v-shrink:1080:0:q50.webp?source=seo_feed_list&x-expires=1703376000&x-signature=Nj4A7m1vgWd1w7UeOlI43xKUa9Y%3D',
    ),
    Cafe(
      name: 'Kokomilk toast & Coffee',
      location: '999 หมู่5 ตึกวิทยาลัยศาสนศึกษา มหาวิทยาลัยมหิดล ตำบลศาลายา อำเภอพุทธมณฑล นครปฐม 73170',
      description: 'ร้านกาแฟ',
      imageUrl: 'https://mustudent.mahidol.ac.th/wp-content/uploads/2023/01/E.KOKOMILK-toast-coffee.jpg',
    ),
    Cafe(
      name: 'Dogdoss craft coffee',
      location: '135/332 ม.6 ต ตำบล ศาลายา อำเภอพุทธมณฑล นครปฐม 73170',
      description: 'ร้านกาแฟ',
      imageUrl: 'https://p16-lemon8-va.ibyteimg.com/tos-alisg-v-a3e477-sg/baa32b33ab74443eb153f67b9ad05d47~tplv-tej9nj120t-origin.webp',
    ),
    Cafe(
      name: 'AGAFI cafe',
      location: '108 96, ตำบล ศาลายา อำเภอพุทธมณฑล นครปฐม 73170',
      description: 'ร้านกาแฟ',
      imageUrl: 'https://img.wongnai.com/p/1920x0/2021/02/15/1e9ff81102d643c18dd3a9bfa8db1a8e.jpg',
    ),
    Cafe(
      name: 'Mood on Coffee house',
      location: '2 ซอย ทวีวัฒนา 22 แขวงศาลาธรรมสพน์ เขตทวีวัฒนา กรุงเทพมหานคร 10170',
      description: 'ร้านกาแฟ',
      imageUrl: 'https://ak-d.tripcdn.com/images/1i6492224occtt8ht1FAE.jpg?proc=source/trip',
    ),
    Cafe(
      name: 'CMD_Salaya',
      location: '135, 346 ศาลายา ซอย ๙ ตำบล ศาลายา อำเภอพุทธมณฑล นครปฐม 73170',
      description: 'ร้านกาแฟ',
      imageUrl: 'https://ak-d.tripcdn.com/images/1i60222345wkgrwvn7D71.jpg?proc=source/trip',
    ),
    Cafe(
      name: 'PETRICHOR cafe',
      location: '88 หมู่2 ถนน ทวีวัฒนา แขวงทวีวัฒนา เขตทวีวัฒนา กรุงเทพมหานคร 10170',
      description: 'ร้านกาแฟ',
      imageUrl: 'https://img.wongnai.com/p/1920x0/2023/03/13/8675cb4a92e344f9887257fca41663dd.jpg',
    ),
    Cafe(
      name: 'Casa Lapin Specialty Coffee x Salaya One',
      location: '66 80 ตำบล ศาลายา อำเภอพุทธมณฑล นครปฐม 73170',
      description: 'ร้านกาแฟ',
      imageUrl: 'https://ak-d.tripcdn.com/images/1i65s22347r0ik5ds8937.jpg?proc=source/trip',
    ),
    Cafe(
      name: 'Glom Glorm',
      location: '135/585 ศาลายาซอย11, ถนนพุทธมณฑลสาย4, ตำบลศาลายา, อำเภอพุทธมณฑล นครปฐม 73170',
      description: 'ร้านขนมหวาน',
      imageUrl: 'https://www.praphansarn.com/assets/images/content/5af563fc5a49f.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cafe List')),
      body: ListView.builder(
        itemCount: cafes.length,
        itemBuilder: (context, index) {
          final cafe = cafes[index];
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
                      '/kinscafe',
                    );
                  } else if (index == 2) {
                    Navigator.pushNamed(
                      context,
                      '/kokomilktoastcoffee',
                    );
                  } else if (index == 3) {
                    Navigator.pushNamed(
                      context,
                      '/dogdosscraftcoffee',
                    );
                  } else if (index == 4) {
                    Navigator.pushNamed(
                      context,
                      '/agaficafe',
                    );
                  } else if (index == 5) {
                    Navigator.pushNamed(
                      context,
                      '/moodoncoffeehouse',
                    );
                  } else if (index == 6) {
                    Navigator.pushNamed(
                      context,
                      '/cmdsalaya',
                    );
                  } else if (index == 7) {
                    Navigator.pushNamed(
                      context,
                      '/petrichorcafe',
                    );    
                  } else if (index == 8) {
                    Navigator.pushNamed(
                      context,
                      '/casalapin',
                    );          
                  } else {
                    Navigator.pushNamed(
                      context,
                      '/glomglorm',
                    );
                  }
                },
                child: Row(
                  children: [
                    Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(cafe.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cafe.name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
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

class CafeDetailsScreen extends StatelessWidget {
  final Cafe cafe;

  const CafeDetailsScreen({required this.cafe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(cafe.name)),
      body: Column(
        children: [
          Image.network(cafe.imageUrl),
          Text(cafe.location),
          Text(cafe.description),
        ],
      ),
    );
  }
}