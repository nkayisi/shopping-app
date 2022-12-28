import 'package:flutter/material.dart';

import 'package:shopapp/components/cart_product.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.pink,
        title: Text('Cart'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
        ],
      ),
      body: CartProducts(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
          right: 8.0,
        ),
        child: Container(
          child: Row(
            children: [
              Expanded(
                child: ListTile(
                  subtitle: Text(
                    "\$ 230",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color: Colors.pink),
                  ),
                ),
              ),
              Expanded(
                  child: Material(
                borderRadius: BorderRadius.circular(100.0),
                color: Colors.pink,
                elevation: 0.0,
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    'Check out',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
