import 'package:flutter/material.dart';
import 'product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Produk Barang'),
            backgroundColor: warna1,
          ),
          body: Container(
            margin: EdgeInsets.fromLTRB(0, 40, 0, 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: ProductCard(
                linkimg: "assets/soto.jpg",
                namaprd: "Mie Sedap Soto 300gr",
                hargaprd: "Rp. 5000",
              ),
            ),
          ),
        ));
  }
}
