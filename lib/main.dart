import 'package:flutter/material.dart';

void main() {
  runApp(GearUpApp());
}

class GearUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Logout functionality to be provided later
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent builds',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            BuildCard(name: 'Unnamed 1', price: 144.99),
            BuildCard(name: 'Unnamed 2', price: 0.00),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view), label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline), label: 'Build'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: 'Browse'),
          BottomNavigationBarItem(
              icon: Icon(Icons.desktop_windows), label: 'Pre-Builts'),
        ],
      ),
    );
  }
}

class BuildCard extends StatelessWidget {
  final String name;
  final double price;

  const BuildCard({required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(
            'Clicked on $name'); // Replace with navigation or functionality as needed
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          height: 130, // Increased height to 3x of ListTile default size
          child: ListTile(
            leading: Icon(Icons.edit),
            title: Text(name),
            trailing: Text('\$${price.toStringAsFixed(2)}',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
