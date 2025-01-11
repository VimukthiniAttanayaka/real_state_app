import 'package:flutter/material.dart';
import 'package:real_state_app/colors.dart';
import 'package:real_state_app/models/Property.dart';

class Catalog01Widget extends StatefulWidget {
  final Property property;

  const Catalog01Widget({
    Key? key,
    required this.property
  }) : super(key: key);

  @override
  State<Catalog01Widget> createState() => _NftWidgetState();
}

class _NftWidgetState extends State<Catalog01Widget> {
  bool isLiked = false;
  String rating = '4.9';
  String reviews = '29';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[100],
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    widget.property.imageUrl,
                    width: double.infinity, // Full width
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 15,
                  right: 15,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isLiked = !isLiked;
                      });
                    },
                    child: Icon(
                      isLiked ? Icons.favorite : Icons.favorite_border,
                      color: isLiked ? Colors.red : Colors.white,
                      // Transparent color for initial state
                      size: 24,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 15,
                  right: 15,
                  child:
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 2),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(color: Colors.white60),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text(
                          '\$ ${widget.property.price}',
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),

                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.property.title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star_border,
                      color: AppColors.primaryColor,
                      size: 26,
                      weight: 5,
                    ),
                    Text(
                      rating,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.Dark100
                      ),
                    ),
                    Text(
                      ' ( ${reviews} Reviews )',
                      style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.Dark60,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
    );
  }
}
