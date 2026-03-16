class Product {
  const Product({
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
  });

  final String name;
  final double price;
  final String description;
  final String imageUrl;

  String get formattedPrice => '\$${price.toStringAsFixed(2)}';

  static const Product sample = Product(
    name: 'Premium Coffee Master',
    price: 149.99,
    description:
        'Experience the art of coffee making with the Premium Coffee Master. '
        'Brew rich, barista-quality coffee at home. It features a programmable '
        'timer, stainless steel carafe, and sleek design. Perfect for your '
        'morning routine. Enjoy professional results with every cup.',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4Yn4mG3L4yH6SaR0dIthfrX44pRqvV6f4AQ&s',
  );
}
