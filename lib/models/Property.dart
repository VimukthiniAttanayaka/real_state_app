class Property {
  final String imageUrl;
  final int beds;
  final int bathrooms;
  final String title;
  final String location;
  final String price;

  Property({
    required this.imageUrl,
    required this.beds,
    required this.bathrooms,
    required this.title,
    required this.location,
    required this.price,
  });

  Property.fromJson(Map<String, dynamic> json)
      : this(
          imageUrl: json['imageUrl'] as String,
          beds: json['beds'] as int,
          bathrooms: json['bathrooms'] as int,
          title: json['title'] as String,
          location: json['location'] as String,
          price: json['price'] as String,
        );

  Property copyWith({
    String? imageUrl,
    int? beds,
    int? bathrooms,
    String? title,
    String? location,
    String? price,
  }) {
    return Property(
        imageUrl: (imageUrl ?? this.imageUrl),
        beds: beds ?? this.beds,
        bathrooms: bathrooms ?? this.bathrooms,
        title: title ?? this.title,
        location: location ?? this.location,
        price: price ?? this.price);
  }

  Map<String, dynamic> toJson() {
    return {
      'imageUrl': imageUrl,
      'beds': beds,
      'bathrooms': bathrooms,
      'title': title,
      'location': location,
      'price': price,
    };
  }
}
