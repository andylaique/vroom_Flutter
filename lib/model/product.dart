class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  const Product(this.name, this.description, this.price, this.imageUrl);
}

final List<Product> dummyProducts = [
  Product(
    'Mercedes-Benz G-Class Wagon',
    'Iconic heavy-duty luxury off-road vehicle featuring a powerful twin-turbo V8 engine, commanding military heritage, and robust body-on-frame build.',
    28000000.0,
    'https://www.shutterstock.com/image-photo/manhattan-new-york-usa-31-600w-2359893123.jpg',
  ),
  Product(
    'Toyota Land Cruiser 300',
    'Full-size flagship luxury SUV renowned for its legendary durability, unmatched off-road capability, and massive three-row cabin presence.',
    21000000.0,
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQrszEXAwZ0ruGw7ihR7f01grExzNXJJ9iQmrityaBNw&s=10',
  ),
  Product(
    'Cadillac Escalade V',
    'High-performance full-size luxury SUV offering an intimidating road stance, supercharged engine power, and an expansive premium cabin.',
    32000000.0,
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ50-QMwItbkY8DZ1d-yi_RIg45kM6PT7Tmvg3P8ID211Cdi20rpE1Xs9KX&s=10',
  ),
  Product(
    'Ford F-150 Raptor R',
    'Massive supercharged off-road pickup truck built with heavy-duty desert racing suspension, enormous all-terrain tires, and an aggressive wide body.',
    24000000.0,
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDR_dNvWODvorGQciDUeZMs3ZRAiEP4K5ARYA2tS6UNw&s=10',
  ),
  Product(
    'Range Rover Autobiography',
    'The pinnacle of large luxury SUVs, blending a commanding high-riding driving position with unrivaled refined status and a long-wheelbase chassis.',
    26500000.0,
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVcD7QrypnNv3K1efImokLqk08zsZfvWiG94NoSwd2MVyRuSr1iMffhWVA&s=10',
  ),
  Product(
    'Jeep Grand Wagoneer',
    'American full-size premium SUV offering massive towing capacities, a giant passenger cabin space, and advanced standard four-wheel-drive systems.',
    19500000.0,
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRQ7aKOqNaUwG__bAD72Vd_ZF3ddPAWdaEyrkx-kXKUesWikRcuzlCon-e&s=10',
  ),
];
