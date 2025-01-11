import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_state_app/colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final List<Map<String, dynamic>> items = [
    {'icon': Icons.home, 'text': 'Home', 'color': AppColors.BackgroundColor1},
    {'icon': Icons.work, 'text': 'Work', 'color': AppColors.BackgroundColor2},
    {
      'icon': Icons.shopping_cart,
      'text': 'Shopping',
      'color': AppColors.BackgroundColor3
    },
    {
      'icon': Icons.favorite,
      'text': 'Favorites',
      'color': AppColors.BackgroundColor4
    },
    {
      'icon': Icons.person,
      'text': 'Profile',
      'color': AppColors.BackgroundColor5
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/background1.png',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.75),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          Positioned(
            top: 50,
            left: 16,
            child: Text(
              'Homzes',
              style: GoogleFonts.poppins(
                color: AppColors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 16,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.white,
                  width: 2.0,
                ),
              ),
              child: IconButton(
                icon: const Icon(Icons.menu, color: AppColors.white),
                onPressed: () {
                  // drawer opening logic here
                },
              ),
            ),
          ),
          Positioned(
            bottom: 300,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Text(
                    'Find the best',
                    style: GoogleFonts.poppins(
                        color: AppColors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'place for you',
                    style: GoogleFonts.poppins(
                        color: AppColors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 100,
              left: 10,
              right: 0,
              child: SizedBox(
                  height: 172,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return Container(
                            width: 160,
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: item['color'].withOpacity(0.8),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.white,
                                    ),
                                    child: Icon(
                                      items[index]['icon'],
                                      color: AppColors.Dark100,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    items[index]['text'],
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ]));
                      }))),
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/catalog01');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              child: const Text(
                'Create an account',
                style: TextStyle(color: AppColors.white, fontSize: 18.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
