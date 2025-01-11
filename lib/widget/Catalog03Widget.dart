import 'package:flutter/material.dart';
import 'package:real_state_app/colors.dart';
import 'package:real_state_app/models/Property.dart';

class Catalog03Widget extends StatefulWidget {
  final Property property;

  const Catalog03Widget({super.key, required this.property});

  @override
  State<Catalog03Widget> createState() => _NftWidgetState();
}

class _NftWidgetState extends State<Catalog03Widget> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[100],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(
                widget.property.imageUrl,
                width: double.infinity,
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
                  size: 24,
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 15,
              child: Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(color: AppColors.white),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      '${widget.property.beds} Beds',
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(color: AppColors.white),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      '${widget.property.bathrooms} Bathroom',
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                ],
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
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '\$ ${widget.property.price} ',
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColors.Dark100),
                  ),
                  const TextSpan(
                    text: '/ mo',
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.Dark100,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
        Text(
          widget.property.location,
          style: const TextStyle(fontSize: 14, color: AppColors.Dark60),
        ),
      ]),
    );
  }
}
