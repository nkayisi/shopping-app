import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final name;
  final picture;
  final old_price;
  final price;

  const ProductDetails({
    this.name,
    this.picture,
    this.old_price,
    this.price,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  String dropdownSizeValue = 'S';
  String dropdownColorValue = 'Black';
  int dropdownQtyValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.pink,
        title: Text(widget.name),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
            color: Colors.white,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text("\$ ${widget.old_price}",
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough)),
                      ),
                      Expanded(
                        child: Text("\$ ${widget.price}",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DropdownButton<String>(
                value: dropdownSizeValue,
                elevation: 16,
                style: const TextStyle(color: Colors.grey),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownSizeValue = newValue!;
                  });
                },
                items: <String>['S', 'M', 'L', 'XL', 'XXL']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(value),
                    ),
                  );
                }).toList(),
              ),
              DropdownButton<String>(
                value: dropdownColorValue,
                elevation: 16,
                style: const TextStyle(color: Colors.grey),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownColorValue = newValue!;
                  });
                },
                items: <String>['Black', 'Grey', 'Yellow', 'Green', 'Red']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(value),
                    ),
                  );
                }).toList(),
              ),
              DropdownButton<int>(
                value: dropdownQtyValue,
                elevation: 16,
                style: const TextStyle(color: Colors.grey),
                onChanged: (int? newValue) {
                  setState(() {
                    dropdownQtyValue = newValue!;
                  });
                },
                items: <int>[1, 2, 3, 4, 5]
                    .map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text("${value}"),
                    ),
                  );
                }).toList(),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.pink,
                  )),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border, color: Colors.pink),
              ),
            ],
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text('Product details'),
            ),
            subtitle: Text(
              "The [overflow] property's behavior is affected by the softWrap argument. If the [softWrap] is true or null, the glyph causing overflow, and those that follow, will not be rendered. Otherwise, it will be shown with the given overflow option.",
              textAlign: TextAlign.justify,
            ),
          ),
          Divider(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  child: Icon(Icons.delivery_dining_rounded),
                ),
                label: const Text('Home delivery'),
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  child: Icon(Icons.delivery_dining_rounded),
                ),
                label: const Text('Home delivery'),
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.green.shade800,
                  child: Icon(
                    Icons.check_circle_rounded,
                  ),
                ),
                label: const Text('Avalaible'),
              ),
              Chip(
                // avatar: CircleAvatar(
                //   backgroundColor: Colors.grey.shade800,
                //   // child: Icon(Icons.check_circle_rounded),
                // ),
                backgroundColor: Color.fromRGBO(22, 230, 10, .4),
                label: const Text('New'),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 100.0, right: 100.0, bottom: 8.0),
          child: Material(
            borderRadius: BorderRadius.circular(100.0),
            color: Colors.pink,
            child: MaterialButton(
              onPressed: () {},
              textColor: Colors.white,
              elevation: 0.0,
              child: Text(
                'Buy now',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
