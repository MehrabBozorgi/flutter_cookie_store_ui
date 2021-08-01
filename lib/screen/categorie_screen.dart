import 'package:flutter/material.dart';
import 'package:flutter_cookie_store_ui/model/product.dart';
import 'package:flutter_cookie_store_ui/widgets/CategoriesItem.dart';

class CategoriesScreen extends StatelessWidget {
  List<Product> product = [
    Product(
      id: 1,
      name: 'Classic cookie',
      image:
          'https://assets.bonappetit.com/photos/5ca534485e96521ff23b382b/1:1/w_2700,h_2700,c_limit/chocolate-chip-cookie.jpg',
      description:
      'What makes this chocolate chip cookie recipe BA’s Best? The addition of browned butter really puts these cookies over the top.',
      price: 30.25,
    ),
    Product(
      id: 2,
      name: 'Chocolate chip cookie',
      image:
          'https://images-gmi-pmc.edge-generalmills.com/087d17eb-500e-4b26-abd1-4f9ffa96a2c6.jpg',
      description:
      'What makes this chocolate chip cookie recipe BA’s Best? The addition of browned butter really puts these cookies over the top.',
      price: 20.00,
    ),
    Product(
      id: 3,
      name: 'Home made cookie',
      image: 'https://www.meals.com/imagesrecipes/18476lrg.jpg',
      description:
      'What makes this chocolate chip cookie recipe BA’s Best? The addition of browned butter really puts these cookies over the top.',
      price: 10.50,
    ),
    Product(
      id: 4,
      name: 'Brown cookie',
      image:
          'https://celebratingsweets.com/wp-content/uploads/2021/05/Double-Chocolate-Chip-Cookies-1-4.jpg',
      description:
      'What makes this chocolate chip cookie recipe BA’s Best? The addition of browned butter really puts these cookies over the top.',
      price: 35.00,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'PICKUP',
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 16,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_rounded,
              color:Colors.orange[800],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                'Categories',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              margin: EdgeInsets.only(bottom: 10),
              width: double.infinity,
              child: Text(
                'Cookies',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(bottom: 230),
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 15),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 25,
                    crossAxisSpacing: 25,
                    // childAspectRatio: 0.75,
                    mainAxisExtent: 220),
                itemCount: product.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) =>
                    CategoriesItem(product: product, index: index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
