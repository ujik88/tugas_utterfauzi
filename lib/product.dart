import 'package:flutter/material.dart';

const Color warna1 = Color(0xFF85CBCB);
const Color warna2 = Color(0xFFA7D676);

class ProductCard extends StatelessWidget {
  final String linkimg;
  final String hargaprd;
  final String namaprd;
  final TextStyle txtstl = TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey[800]);
  ProductCard({this.linkimg = "", this.hargaprd = "", this.namaprd = ""});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 350,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 6, offset: Offset(1, 1))
          ],
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              width: 115,
              height: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), image: DecorationImage(image: AssetImage(linkimg), fit: BoxFit.cover)),
            ),
            Container(
              width: 115,
              height: 100,
              margin: EdgeInsets.all(5),
              child: Column(children: [
                Text(
                  namaprd,
                  style: txtstl,
                ),
                Text(
                  hargaprd,
                  style: txtstl.copyWith(fontSize: 12, color: Colors.red),
                )
              ]),
            ),
            Container(
              width: 100,
              height: 100,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 38,
                    height: 100,
                    decoration: BoxDecoration(border: Border.all(color: warna1)),
                    child: Column(
                      children: [
                        Container(
                          width: 38,
                          height: 30,
                          color: warna1,
                          child: Icon(
                            Icons.add,
                            size: 12,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 38,
                          height: 30,
                          child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "0",
                                style: txtstl,
                              )),
                        ),
                        Container(
                          width: 38,
                          height: 30,
                          color: warna1,
                          child: Icon(
                            Icons.remove,
                            size: 12,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: SizedBox(
                      width: 38,
                      height: 100,
                      child: RaisedButton(
                        onPressed: () {},
                        color: warna1,
                        child: Icon(
                          Icons.shopping_cart,
                          size: 12,
                          color: Colors.white,
                        ),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16))),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
