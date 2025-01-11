import 'package:flutter/material.dart';
import 'package:real_state_app/widget/Catalog01Widget.dart';
import 'package:real_state_app/widget/Catalog03Widget.dart';

class Catalog01screen extends StatefulWidget {
  const Catalog01screen({Key? key}) : super(key: key);

  @override
  State<Catalog01screen> createState() => _Catalog01screenState();
}

class _Catalog01screenState extends State<Catalog01screen> {
  String userName = 'Stanislav';

  final List<Map<String, dynamic>> items = [
    {
      'imageUrl':
          'https://s3-alpha-sig.figma.com/img/a8f8/5cb0/28542dd6baf20bc3e0b3bc4901d6ad4b?Expires=1737331200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NlXVou6to8SJAIm88egE4wv8LT6pQpupXcKnwUev4tVsftIooaQOLI96M8B26VIAPocdBzabHpXtyW3c10e76r3MOgfygr51VzWE-fuZYUpV5Mj6Z2ZURPql19kjLM8AQ8tz4lgp4BQvq4ol9V6wmQAsqcmA697mQ15woUUPJ2Db3tNyZqma76OdZsYMEa5PTq5i2f2x-mvghO1c2G0SQ1mXZajeDhFNDYyyTrF0Zs2s5ZacathXZd5yZNGXS7DiY~16JWLM0N4kf820i~V6cx0sOeZbUK3831G~soH0I1Ds~nTeHkK2CzFdIQJDsBw8Zp8nNt2IdGctNCVvq0zbNA__',
      // Replace with your image URL
      'beds': 3,
      'bathrooms': 2,
      'name': 'Luxury Villa',
      'address': 'Russia, Moscow',
      'monthlyPrice': '5467'
    },
    {
      'imageUrl':
          'https://s3-alpha-sig.figma.com/img/a8f8/5cb0/28542dd6baf20bc3e0b3bc4901d6ad4b?Expires=1737331200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NlXVou6to8SJAIm88egE4wv8LT6pQpupXcKnwUev4tVsftIooaQOLI96M8B26VIAPocdBzabHpXtyW3c10e76r3MOgfygr51VzWE-fuZYUpV5Mj6Z2ZURPql19kjLM8AQ8tz4lgp4BQvq4ol9V6wmQAsqcmA697mQ15woUUPJ2Db3tNyZqma76OdZsYMEa5PTq5i2f2x-mvghO1c2G0SQ1mXZajeDhFNDYyyTrF0Zs2s5ZacathXZd5yZNGXS7DiY~16JWLM0N4kf820i~V6cx0sOeZbUK3831G~soH0I1Ds~nTeHkK2CzFdIQJDsBw8Zp8nNt2IdGctNCVvq0zbNA__',
      // Replace with your image URL
      'beds': 3,
      'bathrooms': 2,
      'name': 'Luxury Villa',
      'address': 'Russia, Moscow',
      'monthlyPrice': '5467'
    },
    {
      'imageUrl':
          'https://s3-alpha-sig.figma.com/img/a8f8/5cb0/28542dd6baf20bc3e0b3bc4901d6ad4b?Expires=1737331200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NlXVou6to8SJAIm88egE4wv8LT6pQpupXcKnwUev4tVsftIooaQOLI96M8B26VIAPocdBzabHpXtyW3c10e76r3MOgfygr51VzWE-fuZYUpV5Mj6Z2ZURPql19kjLM8AQ8tz4lgp4BQvq4ol9V6wmQAsqcmA697mQ15woUUPJ2Db3tNyZqma76OdZsYMEa5PTq5i2f2x-mvghO1c2G0SQ1mXZajeDhFNDYyyTrF0Zs2s5ZacathXZd5yZNGXS7DiY~16JWLM0N4kf820i~V6cx0sOeZbUK3831G~soH0I1Ds~nTeHkK2CzFdIQJDsBw8Zp8nNt2IdGctNCVvq0zbNA__',
      // Replace with your image URL
      'beds': 3,
      'bathrooms': 2,
      'name': 'Luxury Villa',
      'address': 'Russia, Moscow',
      'monthlyPrice': '5467'
    },
    // Add more items to the list
  ];

  @override
  Widget build(BuildContext context) {
    bool isLiked = false;
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 110.0,
          backgroundColor: Colors.yellow,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16.0),
              bottomRight: Radius.circular(16.0),
            ),
          ),
          flexibleSpace: Column(children: [
            const SizedBox(height: 50),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  // Implement drawer opening logic here
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Hi,',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    userName ?? '',
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 8),
                  Badge(
                    smallSize: 12,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black45,
                      child: Text(
                        userName!.substring(0, 1).toUpperCase(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                ],
              )
            ]),
            const SizedBox(height: 8),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 8.0, bottom: 8.0, left: 20.0, right: 8.0),
                            child: Icon(Icons.search),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search...',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
                  ],
                ))
          ])),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Featured',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle button press here
                      },
                      child: const Text(
                        'View all',
                        style: TextStyle(color: Colors.black54),
                      ),
                    )
                  ],
                )),
            SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return Container(
                          width: 150,
                          margin: const EdgeInsets.all(8),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.network(
                                      'https://s3-alpha-sig.figma.com/img/a8f8/5cb0/28542dd6baf20bc3e0b3bc4901d6ad4b?Expires=1737331200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NlXVou6to8SJAIm88egE4wv8LT6pQpupXcKnwUev4tVsftIooaQOLI96M8B26VIAPocdBzabHpXtyW3c10e76r3MOgfygr51VzWE-fuZYUpV5Mj6Z2ZURPql19kjLM8AQ8tz4lgp4BQvq4ol9V6wmQAsqcmA697mQ15woUUPJ2Db3tNyZqma76OdZsYMEa5PTq5i2f2x-mvghO1c2G0SQ1mXZajeDhFNDYyyTrF0Zs2s5ZacathXZd5yZNGXS7DiY~16JWLM0N4kf820i~V6cx0sOeZbUK3831G~soH0I1Ds~nTeHkK2CzFdIQJDsBw8Zp8nNt2IdGctNCVvq0zbNA__',

                                      width: double.infinity, // Full width
                                      height: 150,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 15,
                                    right: 15,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 2),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border:
                                            Border.all(color: Colors.white60),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Text(
                                        '\$ ${items[index]['monthlyPrice']} ',
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ]),
                                Text(
                                  items[index]['name'],
                                  style: const TextStyle(color: Colors.black54),
                                ),
                              ]));
                    })),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New offers ',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle button press here
                      },
                      child: const Text(
                        'View all',
                        style: TextStyle(color: Colors.black54),
                      ),
                    )
                  ],
                )),
            Catalog01Widget(
                imageUrl:
                'https://s3-alpha-sig.figma.com/img/a8f8/5cb0/28542dd6baf20bc3e0b3bc4901d6ad4b?Expires=1737331200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NlXVou6to8SJAIm88egE4wv8LT6pQpupXcKnwUev4tVsftIooaQOLI96M8B26VIAPocdBzabHpXtyW3c10e76r3MOgfygr51VzWE-fuZYUpV5Mj6Z2ZURPql19kjLM8AQ8tz4lgp4BQvq4ol9V6wmQAsqcmA697mQ15woUUPJ2Db3tNyZqma76OdZsYMEa5PTq5i2f2x-mvghO1c2G0SQ1mXZajeDhFNDYyyTrF0Zs2s5ZacathXZd5yZNGXS7DiY~16JWLM0N4kf820i~V6cx0sOeZbUK3831G~soH0I1Ds~nTeHkK2CzFdIQJDsBw8Zp8nNt2IdGctNCVvq0zbNA__',
                // Replace with your image URL
                beds: 3,
                bathrooms: 2,
                name: 'Luxury Villa',
                address: 'Russia, Moscow',
                monthlyPrice: '5467',
              rating: '4.9',
            reviews: '29',),
            Catalog01Widget(
                imageUrl:
                'https://s3-alpha-sig.figma.com/img/a8f8/5cb0/28542dd6baf20bc3e0b3bc4901d6ad4b?Expires=1737331200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NlXVou6to8SJAIm88egE4wv8LT6pQpupXcKnwUev4tVsftIooaQOLI96M8B26VIAPocdBzabHpXtyW3c10e76r3MOgfygr51VzWE-fuZYUpV5Mj6Z2ZURPql19kjLM8AQ8tz4lgp4BQvq4ol9V6wmQAsqcmA697mQ15woUUPJ2Db3tNyZqma76OdZsYMEa5PTq5i2f2x-mvghO1c2G0SQ1mXZajeDhFNDYyyTrF0Zs2s5ZacathXZd5yZNGXS7DiY~16JWLM0N4kf820i~V6cx0sOeZbUK3831G~soH0I1Ds~nTeHkK2CzFdIQJDsBw8Zp8nNt2IdGctNCVvq0zbNA__',
                // Replace with your image URL
                beds: 3,
                bathrooms: 2,
                name: 'Luxury Villa',
                address: 'Russia, Moscow',
                monthlyPrice: '5467',
              rating: '4.9',
              reviews: '29',),
          ],
        ),
      ),
    );
  }
}
