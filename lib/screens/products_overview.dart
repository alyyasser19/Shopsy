import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/product_grid.dart';
import 'package:provider/provider.dart';
import '../providers/Products.dart';
import '../widgets/product_item.dart';

class ProductsOverview extends StatelessWidget {
  static const routeName = '/products-overview';

  const ProductsOverview({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = Provider
        .of<Products>(context)
        .items;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopsy'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            iconSize: 30,
            onPressed: () {
              print("Search");
            },
          ),
        ],
        leading: Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                iconSize: 30,
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            }
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: const Text('Menu'),
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Manage Products'),
              onTap: () {
                Navigator.pushNamed(context, '/admin');
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: ProductGrid(page:'home'),
      ),
    );
  }
}