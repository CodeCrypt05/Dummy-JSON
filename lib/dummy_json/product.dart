import 'package:dummy_json/model/products/product.dart';
import 'package:dummy_json/services/product_api.dart';
import 'package:dummy_json/widget/products/product_card.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ProductDart extends StatefulWidget {
  const ProductDart({super.key});

  @override
  State<ProductDart> createState() => _ProductState();
}

class _ProductState extends State<ProductDart> {
  static const _pageSize = 10; // Set to 10 to show 10 cards at a time

  final PagingController<int, Product> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final List<Product> newData = await getProductsData(_pageSize);

      final isLastPage = newData.length < _pageSize;

      if (isLastPage) {
        _pagingController.appendLastPage(newData);
      } else {
        final nextPageKey = pageKey + 1;
        _pagingController.appendPage(newData, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Products'),
        ),
        body: PagedListView<int, Product>(
          pagingController: _pagingController,
          builderDelegate: PagedChildBuilderDelegate<Product>(
            itemBuilder: (context, item, index) {
              final product = item;
              return ProductCard(
                title: product.title.toString(),
                description: product.description.toString(),
                price: product.price.toString(),
                brand: product.brand.toString(),
              );
            },
          ),
        ),
      ),
    );
  }

  // FutureBuilder(
  //         future: getProductsData(),
  //         builder: (context, snapshot) {
  //           if (snapshot.connectionState == ConnectionState.waiting) {
  //             return const Center(
  //               child: CircularProgressIndicator(),
  //             );
  //           } else if (snapshot.hasError) {
  //             return Text('Error: ${snapshot.error}');
  //           } else {
  //             return ListView.builder(
  //               itemCount: snapshot.data!.length,
  //               itemBuilder: (context, index) {
  //                 String title = snapshot.data![index].title.toString();
  //                 String description =
  //                     snapshot.data![index].description.toString();
  //                 String price = snapshot.data![index].price.toString();
  //                 String brand = snapshot.data![index].brand.toString();
  //                 print(snapshot.data!.length);
  //                 return ProductCard(
  //                   title: title,
  //                   description: description,
  //                   price: price,
  //                   brand: brand,
  //                 );
  //               },
  //             );
  //           }
  //         },
  //       ),
}
