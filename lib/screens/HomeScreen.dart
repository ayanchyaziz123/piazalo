import 'package:flutter/material.dart';
import 'package:piazalo/screens/LoginScreen.dart';
import 'package:piazalo/screens/product_details.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'piazalo',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
            letterSpacing: 1.2,
          ),
        ),
        actions: [
          // Add a camera icon button on the app bar
          IconButton(
            icon: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            onPressed: () {
              // Implement camera functionality
            },
          ),
          // Add a login button on the app bar
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            onPressed: () {
              // Navigate to the login screen when button is pressed
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
          // Add more actions as needed
        ],
        backgroundColor: Colors.green, // Change the color of the app bar
        elevation: 0, // Remove the shadow
      ),

      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Display some products
          ProductItem(
            name: 'Mango',
            price: 19.99,
            imageUrl: 'images/product1.jpg', // Example image asset path
            onPressed: () {
              // Navigate to the product details screen and pass product details
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetailsScreen(
                  name: 'Mango', // Pass product name
                  price: 19.99,   // Pass product price
                  imageUrl: 'images/product1.jpg', // Pass product image URL
                )),
              );
            },
          ),
          SizedBox(height: 16.0),
          ProductItem(
            name: 'Tomattos',
            price: 24.99,
            imageUrl: 'images/product2.jpg', // Example image asset path
            onPressed: () {
              // Navigate to the product details screen and pass product details
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetailsScreen(
                  name: 'Tomattos',
                  price: 24.99,
                  imageUrl: 'images/product2.jpg', // Pass product image URL
                )),
              );
            },
          ),
          SizedBox(height: 16.0),
          // Add two more ProductItem widgets
          ProductItem(
            name: 'Apple',
            price: 15.99,
            imageUrl: 'images/product3.jpg', // Example image asset path
            onPressed: () {
              // Navigate to the product details screen and pass product details
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetailsScreen(
                  name: 'Apple',
                  price: 15.99,
                  imageUrl: 'images/product3.jpg', // Pass product image URL
                )),
              );
            },
          ),
          SizedBox(height: 16.0),
          ProductItem(
            name: 'Banana',
            price: 9.99,
            imageUrl: 'images/product4.jpg', // Example image asset path
            onPressed: () {
              // Navigate to the product details screen and pass product details
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetailsScreen(
                  name: 'Banana',
                  price: 9.99,
                  imageUrl: 'images/product4.jpg', // Pass product image URL
                )),
              );
            },
          ),
        ],
      ),
    );
  }
}


class ProductItem extends StatelessWidget {
  final String name;
  final double price;
  final String imageUrl;
  final VoidCallback onPressed;

  const ProductItem({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              height: 150.0,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4.0),
                  Text('\$$price'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
