import 'package:catalog/Models/item_widget.dart';
import 'package:catalog/Models/items.dart';
import 'package:catalog/pages/cart_page.dart';
import 'package:catalog/pages/home_detail.dart';
import 'package:catalog/widgets/catalog_header.dart';
import 'package:catalog/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
  import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class Catalog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff336699),
        foregroundColor: Colors.white,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>productCart(),
          ));
        },
        child: Icon(
          CupertinoIcons.shopping_cart

      ),
      ),
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Color(0xffE8E8E8),
      ),
      drawer: MyDrawer(),

        backgroundColor: Color(0xffE8E8E8),
        body:
        Column(


           children: [
             Padding(
               padding: const EdgeInsets.only(right: 55),
               child: Container(


                   child: CatalogHeader()),
             ),

             if(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
               Expanded(child:
               CatalogList(),
               )

             else
              CircularProgressIndicator().centered().expand(),
           ],
         ),

      
    );
  }
}



class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context,index){
          final catalog=CatalogModel.items[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeDetailPage(catalog: catalog),
              ));
            },
              child:
          CatalogItem(catalog:catalog)
          );


    },
    );
  }
  }

  class CatalogItem extends StatelessWidget {
    final Item catalog;

  const CatalogItem({super.key, required this.catalog}):assert(catalog!=null);

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(right: 20,left: 20),
        child: VxBox(
          child: Row(
            children: [
              Hero(
          tag: Key(catalog.id.toString()),
                  child: Image.asset(catalog.image).box.rounded.p8.color(Vx.gray50).make().p16().w40(context)),
              Expanded(
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: catalog.name.text.bold.make(),
                      ),
                      catalog.desc.text.textStyle(context.captionStyle).make(),
                     ButtonBar(
                       alignment: MainAxisAlignment.spaceBetween,
                       children: [
                         "\$${catalog.price}".text.hexColor('#336699').bold.size(20).make(),
                         ElevatedButton(
                           style: ButtonStyle(

                             backgroundColor: MaterialStateProperty.all<Color>(Color(0xff336699)),
                                   foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                           ),

                             onPressed: (){

                         },
                             child:"Buy".text.make() )
                       ],
                     )
                    ]

                  ))
            ],
          )
        ).white.roundedLg.square(150).make().py16(),
      );
    }
  }




