import 'package:add_to_cart/screens/addtocart/model/productmodel.dart';
import 'package:add_to_cart/screens/addtocart/provider/productprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Productscreen extends StatefulWidget {
  const Productscreen({Key? key}) : super(key: key);

  @override
  State<Productscreen> createState() => _ProductscreenState();
}

class _ProductscreenState extends State<Productscreen> {

  ProductProvider? productProvider;

  @override
  Widget build(BuildContext context) {

    productProvider = Provider.of<ProductProvider>(context,listen: false);
    ProductModel p1 = ModalRoute.of(context)!.settings.arguments as ProductModel;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Product Detail",style: TextStyle(letterSpacing: 2,color: Colors.black)),
          leading: Icon(Icons.all_inclusive,color: Colors.black,size: 30),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Text("${p1.img}",style: TextStyle(fontSize: 150)),
                SizedBox(height: 10,),
                Text("${p1.name}",style: TextStyle(fontSize: 30,letterSpacing: 1,fontWeight: FontWeight.w700)),
                SizedBox(height: 10,),

                Text("${p1.price}",style: TextStyle(fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w400)),
                Spacer(),
                IconButton(onPressed: () {

                  productProvider!.addcart(p1);

                }, icon: Icon(Icons.add_shopping_cart,size: 40),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
