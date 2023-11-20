import 'package:dummy_json/model/products/product.dart';
import 'package:dummy_json/services/product_api.dart';
import 'package:dummy_json/widget/products/product_card.dart';
import 'package:flutter/material.dart';

class ProductDart extends StatefulWidget {
  const ProductDart({super.key});

  @override
  State<ProductDart> createState() => _ProductState();
}

class _ProductState extends State<ProductDart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Products'),
        ),
        body: FutureBuilder(
          future: getProductsData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  String title = snapshot.data![index].title.toString();
                  String description =
                      snapshot.data![index].description.toString();
                  String price = snapshot.data![index].price.toString();
                  String brand = snapshot.data![index].brand.toString();
                  print(snapshot.data!.length);
                  return ProductCard(
                    title: title,
                    description: description,
                    price: price,
                    brand: brand,
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
