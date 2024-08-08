import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatalogHeader extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(

          children: [
            Container(

              child:
              Padding(
                padding: const EdgeInsets.only(right:50),
                child: Text(
                  "Catalog App",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff290061),
                    fontFamily: 'Font2',

                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Text(
                  "Trending Products",
                  style: TextStyle(fontSize: 14, fontFamily: 'Font3'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}