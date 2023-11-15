import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.purpleAccent,
      ),
      darkTheme: ThemeData.dark(), // Enable dark mode
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.purpleAccent,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductListPage(),
              ),
            );
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}

class ProductListPage extends StatelessWidget {
  final List<Product> products = [
    Product(
        name: 'Blueberry cake',
        cost: 10,
        imageUrl: 'assets/blueberry_cake.jpg'),
    Product(name: 'Cheesecake', cost: 25, imageUrl: 'assets/cheesecake.jpg'),
    Product(name: 'Apple Pie', cost: 18, imageUrl: 'assets/apple_pie.jpg'),
    Product(name: 'Tiramisu', cost: 22, imageUrl: 'assets/tiramisu.jpg'),
    Product(
        name: 'Strawberry Shortcake',
        cost: 15,
        imageUrl: 'assets/strawberry_shortcake.jpg'),
    Product(name: 'Pecan Pie', cost: 30, imageUrl: 'assets/pecan_pie.jpg'),
    Product(
        name: 'Ice Cream Sundae',
        cost: 12,
        imageUrl: 'assets/ice_cream_sundae.jpg'),
    Product(
        name: 'Red Velvet Cupcakes',
        cost: 18,
        imageUrl: 'assets/red_velvet_cupcakes.jpg'),
    Product(name: 'Lemon Tart', cost: 20, imageUrl: 'assets/lemon_tart.jpg'),
    Product(
        name: 'Banana Bread', cost: 15, imageUrl: 'assets/banana_bread.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(products[index].imageUrl),
            ),
            title: Text(products[index].name),
            subtitle: Text('Cost: \$${products[index].cost}'),
          );
        },
      ),
    );
  }
}

class Product {
  final String name;
  final int cost;
  final String imageUrl;

  Product({required this.name, required this.cost, required this.imageUrl});
}
