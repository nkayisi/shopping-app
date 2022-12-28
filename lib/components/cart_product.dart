import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  const CartProducts({Key? key}) : super(key: key);

  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var product_list = [
    {
      'name': 'Blazer',
      'picture': 'images/products/blazer1.jpeg',
      'old_price': 120,
      'price': 95,
      'size': 'S',
      'color': 'Black',
      'quantity': 1,
    },
    {
      'name': 'Red Dress',
      'picture': 'images/products/dress1.jpeg',
      'old_price': 100,
      'price': 85,
      'size': 'M',
      'color': 'Red',
      'quantity': 2,
    },
    {
      'name': 'Hills',
      'picture': 'images/products/hills1.jpeg',
      'old_price': 100,
      'price': 85,
      'size': 'XL',
      'color': 'Blue',
      'quantity': 1,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: product_list.length,
        itemBuilder: (context, index) {
          return SingleCartProduct(
            name: product_list[index]['name'],
            picture: product_list[index]['picture'],
            price: product_list[index]['price'],
            size: product_list[index]['size'],
            color: product_list[index]['color'],
            quantity: product_list[index]['quantity'],
          );
        });
  }
}

class SingleCartProduct extends StatelessWidget {
  final name;
  final picture;
  final price;
  final size;
  final color;
  final quantity;

  const SingleCartProduct({
    this.name,
    this.picture,
    this.price,
    this.size,
    this.color,
    this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: ListTile(
        leading: Image.asset(
          picture,
        ),
        title: Text(name),
        subtitle: Column(
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Text('Size: '),
                    Text(size, style: TextStyle(color: Colors.pink)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Text('|'),
                ),
                Row(
                  children: [
                    Text('Color: '),
                    Text(color, style: TextStyle(color: Colors.pink)),
                  ],
                ),
                Expanded(
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_left)),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("${quantity}"),
                ),
                Expanded(
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_right)),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$ ${price}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.pink,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
