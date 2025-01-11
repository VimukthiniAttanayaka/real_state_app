import 'package:flutter/material.dart';

class Catalog01Widget extends StatefulWidget {
  final String imageUrl;
  final int beds;
  final int bathrooms;
  final String name;
  final String address;
  final String monthlyPrice;
  final String rating;
  final String reviews;

  const Catalog01Widget({
    Key? key,
    required this.imageUrl,
    required this.beds,
    required this.bathrooms,
    required this.name,
    required this.address,
    required this.monthlyPrice,
    required this.reviews,
    required this.rating
  }) : super(key: key);

  @override
  State<Catalog01Widget> createState() => _NftWidgetState();
}

class _NftWidgetState extends State<Catalog01Widget> {
  bool isLiked = false;

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
                    widget.imageUrl,
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
                          color: Colors.white,
                          border: Border.all(color: Colors.white60),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text(
                          '\$ ${widget.monthlyPrice}',
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
                  widget.name,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star_border,
                      color: Colors.green,
                      size: 26,
                      weight: 5,
                    ),
                    Text(
                      ' ${widget.rating} ', // Assuming 'rating' is available
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                    Text(
                      '( ${widget.reviews} Reviews )', // Assuming 'reviews' is available
                      style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
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
