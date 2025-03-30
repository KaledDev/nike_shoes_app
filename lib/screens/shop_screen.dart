import 'package:flutter/material.dart';
import '../model/shoe.dart';
import '../component/shoe_tile.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  String champRecherche = "";
  void updateSearchInput(String value) {
    setState(() {
      champRecherche = value;
    });
  }

  final List<Shoe> shoes = [
    Shoe(
      imagePath: 'assets/images/n1.png',
      title: 'Air Jordan 1',
      description: 'Classic high-top sneakers.',
      price: 120.00,
    ),
    Shoe(
      imagePath: 'assets/images/n2.png',
      title: 'Nike Air Max',
      description: 'Comfortable and stylish sneakers.',
      price: 150.00,
    ),
    Shoe(
      imagePath: 'assets/images/n3.png',
      title: 'Adidas Ultraboost',
      description: 'Perfect for running and sports.',
      price: 180.00,
    ),
    Shoe(
      imagePath: 'assets/images/n4.png',
      title: 'Adidas Ultraboost',
      description: 'Perfect for running and sports.',
      price: 180.00,
    ),
    Shoe(
      imagePath: 'assets/images/n5.png',
      title: 'Adidas Ultraboost',
      description: 'Perfect for running and sports.',
      price: 180.00,
    ),
    Shoe(
      imagePath: 'assets/images/n6.png',
      title: 'Adidas Ultraboost',
      description: 'Perfect for running and sports.',
      price: 180.00,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Barre de recherche
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.grey, width: 0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.grey, width: 0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.grey[300]!, width: 0),
              ),
            ),
            onChanged: updateSearchInput,
          ),
        ),
        SizedBox(height: 20),
        
        // Slogan
        Text(
          'Everyone flies...some fly longer than other',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
            fontWeight: FontWeight.w500
          ),
        ),
        SizedBox(height: 30),
        
        // Titre de la section
        Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hot Pick🔥',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
        ),
        
        // Liste horizontale des chaussures
        Container(
          height: 450, // Hauteur fixe pour la zone de défilement horizontal
          margin: EdgeInsets.only(top: 16),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: shoes.length,
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) {
              return Container(
                width: 400, // Largeur fixe pour chaque carte
                margin: EdgeInsets.only(right: 16),
                child: ShoeTile(shoe: shoes[index]),
              );
            },
          ),
        ),
        
      ],
    );
  }
  
}