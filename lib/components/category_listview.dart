import 'package:flutter/material.dart';

class CategoryListview extends StatelessWidget {
  const CategoryListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: 'images/cats/tshirt.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/cats/dress.png',
            image_caption: 'Dress',
          ),
          Category(
            image_location: 'images/cats/formal.png',
            image_caption: 'Formal',
          ),
          Category(
            image_location: 'images/cats/informal.png',
            image_caption: 'Informal',
          ),
          Category(
            image_location: 'images/cats/shoe.png',
            image_caption: 'Shoe',
          ),
          Category(
            image_location: 'images/cats/jeans.png',
            image_caption: 'Pant',
          ),
          Category(
            image_location: 'images/cats/accessories.png',
            image_caption: 'Accessories',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String? image_location;
  final String? image_caption;

  Category({
    this.image_location,
    this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 80.0,
          height: 80.0,
          child: ListTile(
            title: Image.asset(image_location!),
            subtitle: Text(
              image_caption!,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12.0),
            ),
          ),
        ),
      ),
    );
  }
}
