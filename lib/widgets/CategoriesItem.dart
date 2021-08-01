import 'package:flutter/material.dart';
import 'package:flutter_cookie_store_ui/model/product.dart';
import 'package:flutter_cookie_store_ui/screen/detail_screen.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({required this.product, required this.index});

  final List<Product> product;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                product: product[index],
              ),
            ),
          );
        },
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              width: double.infinity,
              child: Icon(
                Icons.favorite_border,
                color: Colors.orange[800],
                size: 20,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                product[index].image,
                height: 100,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                '\$ '+ product[index].price.toString(),
                style: TextStyle(
                  color: Colors.orange[800],
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              product[index].name,
              style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.orange[800],
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Add to cart',
                      style: TextStyle(
                        color: Colors.orange[800],
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
