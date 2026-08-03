import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Map<String, String>> _products = [
    {
      "name": "Vroom Running Shoes",
      "price": "\$120.00",
      "image": "assets/images/shoes1.png"
    },
    {
      "name": "Classic Leather Sneakers",
      "price": "\$95.00",
      "image": "assets/images/shoes2.png"
    },
    {
      "name": "All-Terrain Trail Boots",
      "price": "\$145.00",
      "image": "assets/images/boots.png"
    },
    {
      "name": "Ultra Lightweight Trainers",
      "price": "\$80.00",
      "image": "assets/images/trainers.png"
    },
  ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vroom Catalog"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: _products.length,
          padding: const EdgeInsets.all(16.0),
          itemBuilder: (context, index) {
            final product = _products[index];

            return Card(
              margin: const EdgeInsets.only(bottom: 16.0),
              clipBehavior: Clip.antiAlias, 
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row( 
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.grey[200], 
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Image.asset(
                        product["image"]!,
                        fit: BoxFit.cover, 
                        errorBuilder: (context, error, stackTrace) {
                          
                          return const Icon(Icons.image_outlined, size: 40, color: Colors.grey);
                        },
                      ),
                    ),

                    const SizedBox(width: 16), 

                    Expanded( 
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product["name"]!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            product["price"]!,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.deepPurple,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_outlined),
            activeIcon: Icon(Icons.receipt_long),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}