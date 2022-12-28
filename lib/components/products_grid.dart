import 'package:flutter/material.dart';

import 'package:shopapp/ui/product_details_page.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      'name': 'Blazer',
      'picture': 'images/products/blazer1.jpeg',
      'old_price': 120,
      'price': 95
    },
    {
      'name': 'Red Dress',
      'picture': 'images/products/dress1.jpeg',
      'old_price': 100,
      'price': 85
    },
    {
      'name': 'Pants',
      'picture': 'images/products/pants2.jpeg',
      'old_price': 90,
      'price': 85
    },
    {
      'name': 'Hills',
      'picture': 'images/products/hills1.jpeg',
      'old_price': 100,
      'price': 85
    },
    {
      'name': 'Red Hills',
      'picture': 'images/products/hills2.jpeg',
      'old_price': 100,
      'price': 85
    },
    {
      'name': 'Skt',
      'picture': 'images/products/skt1.jpeg',
      'old_price': 90,
      'price': 85
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            name: product_list[index]['name'],
            picture: product_list[index]['picture'],
            old_price: product_list[index]['old_price'],
            price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final name;
  final picture;
  final old_price;
  final price;

  const Single_prod({
    this.name,
    this.picture,
    this.old_price,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      child: Hero(
        tag: name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetails(
                      name: name,
                      picture: picture,
                      old_price: old_price,
                      price: price,
                    ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    '\$$price',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text(
                    '\$$old_price',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
              child: Image.asset(picture, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
