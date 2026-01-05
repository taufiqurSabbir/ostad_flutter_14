import 'package:flutter/material.dart';
import 'package:flutter_14/module_13/widget/city_card.dart';

class Module13Class1 extends StatelessWidget {
  const Module13Class1({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> CityList = [
      {
        'img':
            'https://media.istockphoto.com/id/1210768445/photo/skyscraper-in-dhaka-metropolitan-area.jpg?s=612x612&w=0&k=20&c=qGFV2qpVXkUNtm8KYT2avrSZwcBcoeM9wIp4LdADgrI=',
        'name': 'Dhaka',
        'rating': '4.8',
      },
      {
        'img':
            'https://media-cdn.tripadvisor.com/media/photo-s/1b/4e/60/58/cox-s-bazar-is-a-town.jpg',
        'name': 'Coxs Bazar',
        'rating': '5.0',
      },
      {
        'img':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtdUhaC5rpDkzKbopf5UF90ccKowzRiYxE8A&s',
        'name': 'Sylhet',
        'rating': '4.9',
      },
      {
        'img':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfNM4LMuqtVyxu8qOWbFXvVq9ig2qNcCb4PQ&s',
        'name': 'Saint Martin',
        'rating': '4.7',
      },
      {
        'img':
            'https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Sundarban_Tiger.jpg/1200px-Sundarban_Tiger.jpg',
        'name': 'Sundarbans',
        'rating': '4.6',
      },
      {
        'img':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTncd6NrDxtjj2CXKZUFbQWQ_CVKs2E_G9wg&s',
        'name': 'Rangamati',
        'rating': '4.8',
      },
      {
        'img':
            'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Buddha_Dhatu_Jadi_06.jpg/1200px-Buddha_Dhatu_Jadi_06.jpg',
        'name': 'Bandarban',
        'rating': '4.9',
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CityCard(
                    img:
                        'https://media.istockphoto.com/id/1210768445/photo/skyscraper-in-dhaka-metropolitan-area.jpg?s=612x612&w=0&k=20&c=qGFV2qpVXkUNtm8KYT2avrSZwcBcoeM9wIp4LdADgrI=',
                    CityName: 'Dhaka',
                    ratting: '4.8',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CityCard(
                    img:
                        'https://media-cdn.tripadvisor.com/media/photo-s/1b/4e/60/58/cox-s-bazar-is-a-town.jpg',
                    CityName: 'Coxs Bazar',
                    ratting: '5.0',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CityCard(
                    img:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtdUhaC5rpDkzKbopf5UF90ccKowzRiYxE8A&s',
                    CityName: 'Sylhet ',
                    ratting: '4.9',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 500,
              width: 250,
              child: ListView.builder(
                  itemCount: CityList.length,
                  itemBuilder: (context, index) {
                    return CityCard(
                      img: CityList[index]['img']!,
                      CityName: CityList[index]['name']!,
                      ratting: CityList[index]['rating']!,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
