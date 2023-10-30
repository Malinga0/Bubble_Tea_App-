import 'package:flutter/material.dart';
import 'package:flutter_bubble_tea_app/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BubbleShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Text(
                      "Buble Tea Shop",
                      style: TextStyle(fontSize: 20),
                    ),
                    //list of drink  for sale
                    Expanded(
                      child: ListView.builder(
                        itemCount: value.shop.length,
                        itemBuilder: (context, index) => ListTile(
                          title: Text(value.shop[index].name),
                          subtitle: Text(value.shop[index].price),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
