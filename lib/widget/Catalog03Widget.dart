import 'package:flutter/material.dart';

class Catalog03Widget extends StatefulWidget {
  final String imageUrl;
  final int beds;
  final int bathrooms;
  final String name;
  final String address;
  final String monthlyPrice;

  const Catalog03Widget({
    Key? key,
    required this.imageUrl,
    required this.beds,
    required this.bathrooms,
    required this.name,
    required this.address,
    required this.monthlyPrice,
  }) : super(key: key);

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
                left: 15,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white60),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        '${widget.beds} Beds',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white60),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        '${widget.bathrooms} Bathroom',
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
            widget.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\$ ${widget.monthlyPrice} ',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
                TextSpan(
                  text: '/ mo',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          )
        ],
      ),
          Text(
            widget.address,
            style: const TextStyle(fontSize: 14, color: Colors.black54),
          ),
    ]),
    );
  }
}
