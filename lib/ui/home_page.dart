import 'package:flutter/material.dart';

import 'package:shopapp/components/image_carousel.dart';
import 'package:shopapp/components/category_listview.dart';
import 'package:shopapp/components/products_grid.dart';
import 'package:shopapp/ui/cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.pink,
        title: Text('Shopping App'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Cart())),
            icon: Icon(Icons.shopping_cart_outlined),
            color: Colors.white,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
              accountName: Text('Nelson Kayisi'),
              accountEmail: Text('nelsonkayisirirya5@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text('Home Page'),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('My account'),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text('My oders'),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Categories'),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Favorite'),
              ),
            ),
            Divider(),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.help, color: Colors.blue),
                title: Text('About'),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          image_carousel,
          Padding(padding: EdgeInsets.all(8.0), child: Text('Categories')),
          CategoryListview(),
          Padding(padding: EdgeInsets.all(8.0), child: Text('Recent Products')),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 320.0,
              child: Products(),
            ),
          ),
        ],
      ),
    );
  }
}
