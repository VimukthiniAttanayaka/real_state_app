import 'package:flutter/material.dart';
import 'package:real_state_app/widget/Catalog03Widget.dart';

class Catalog03screen extends StatefulWidget {
  const Catalog03screen({Key? key}) : super(key: key);

  @override
  State<Catalog03screen> createState() => _Catalog03screenState();
}

class _Catalog03screenState extends State<Catalog03screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80.0),
            // Set your desired height here
            child: AppBar(
              backgroundColor: Colors.green[300],
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                ),
              ),
              title: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                    child: IconButton(
                      icon: const Icon(Icons.menu, color: Colors.white),
                      onPressed: () {
                        // Handle drawer opening logic here
                      },
                    ),
                  ),
                  const SizedBox(width: 10.0),
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
                    ),
                  ),
                ],
              ),
            )),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                'Popular rent offers ',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            Catalog03Widget(
                imageUrl:
                    'https://s3-alpha-sig.figma.com/img/a8f8/5cb0/28542dd6baf20bc3e0b3bc4901d6ad4b?Expires=1737331200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NlXVou6to8SJAIm88egE4wv8LT6pQpupXcKnwUev4tVsftIooaQOLI96M8B26VIAPocdBzabHpXtyW3c10e76r3MOgfygr51VzWE-fuZYUpV5Mj6Z2ZURPql19kjLM8AQ8tz4lgp4BQvq4ol9V6wmQAsqcmA697mQ15woUUPJ2Db3tNyZqma76OdZsYMEa5PTq5i2f2x-mvghO1c2G0SQ1mXZajeDhFNDYyyTrF0Zs2s5ZacathXZd5yZNGXS7DiY~16JWLM0N4kf820i~V6cx0sOeZbUK3831G~soH0I1Ds~nTeHkK2CzFdIQJDsBw8Zp8nNt2IdGctNCVvq0zbNA__',
                // Replace with your image URL
                beds: 3,
                bathrooms: 2,
                name: 'Luxury Villa',
                address: 'Russia, Moscow',
                monthlyPrice: '5467'),
            Catalog03Widget(
                imageUrl:
                    'https://s3-alpha-sig.figma.com/img/a8f8/5cb0/28542dd6baf20bc3e0b3bc4901d6ad4b?Expires=1737331200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NlXVou6to8SJAIm88egE4wv8LT6pQpupXcKnwUev4tVsftIooaQOLI96M8B26VIAPocdBzabHpXtyW3c10e76r3MOgfygr51VzWE-fuZYUpV5Mj6Z2ZURPql19kjLM8AQ8tz4lgp4BQvq4ol9V6wmQAsqcmA697mQ15woUUPJ2Db3tNyZqma76OdZsYMEa5PTq5i2f2x-mvghO1c2G0SQ1mXZajeDhFNDYyyTrF0Zs2s5ZacathXZd5yZNGXS7DiY~16JWLM0N4kf820i~V6cx0sOeZbUK3831G~soH0I1Ds~nTeHkK2CzFdIQJDsBw8Zp8nNt2IdGctNCVvq0zbNA__',
                // Replace with your image URL
                beds: 3,
                bathrooms: 2,
                name: 'Luxury Villa',
                address: 'Russia, Moscow',
                monthlyPrice: '5467')
          ],
        )));
  }
}
