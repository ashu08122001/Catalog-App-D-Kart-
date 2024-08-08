import 'package:catalog/Models/items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog})
      : assert(catalog != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      SafeArea(
        child:
        Column(
          children: [
            Hero(
                tag: Key(catalog.id.toString()),
                child: Image.asset(catalog.image).h40(context)),
            Expanded(
                child: VxArc(
              height: 30,
              arcType: VxArcType.convey,
              edge: VxEdge.top,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                    color: Color(0xffe2fee2),
                    child: Column(
                      children: [
                        catalog.name.text.xl4.bold.make(),
                        catalog.desc.text
                            .text(
                            "With a dual rear camera system and Google Tensor G2's advanced image processing, Pixel 7a lets you create perfect photos every time. It's easy to take amazing pictures in low light, or fix your blurry photos and remove distractions with a few taps in Google Photos." )
                            .textStyle(context.captionStyle)
                            .make(),
                      ],
                    ).p32()
                ),
              ),
            )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 110),
                child: Container(
                  child: ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "\$${catalog.price}"
                          .text
                          .hexColor('#336699')
                          .bold
                          .size(20)
                          .make(),
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff336699)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                          ),
                          onPressed: () {},
                          child: "Buy".text.make())
                    ],
                  ).p16(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
