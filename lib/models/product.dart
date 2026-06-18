class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final String image;
  final String category;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.category,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] is int ? json['id'] : int.tryParse(json['id'].toString()) ?? 0,
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      price: json['price'] is double
          ? json['price']
          : double.tryParse(json['price'].toString()) ?? 0.0,
      image: json['image'] ?? '',
      category: json['category'] ?? '',
    );
  }
}