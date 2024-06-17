import 'package:flutter/material.dart';
import 'package:shop_kit/constants.dart';
import 'package:shop_kit/models/Product.dart';
import 'package:shop_kit/screens/cart/widgets/cart_item.dart';
import 'package:shop_kit/screens/details/details_screen.dart';
import 'package:shop_kit/screens/home/components/product_card.dart';
import 'package:shop_kit/widgets/spacing_height.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "My Cart",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
          ),
          const SpaceHeight(height: 20),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(
                parent: NeverScrollableScrollPhysics()),
            child: SizedBox(
              height: height * 2 / 3,
              child: Column(
                children: List.generate(
                  demo_product.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: defaultPadding),
                    child: Cart_Item(
                      title: demo_product[index].title,
                      image: demo_product[index].image,
                      price: demo_product[index].price,
                      bgColor: demo_product[index].bgColor,
                      quantity: 1,
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailsScreen(product: demo_product[index]),
                            ));
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Subtotal:",
                    style: Theme.of(context).textTheme.titleMedium!),
                Text(
                  "\$740",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Center(
            child: SizedBox(
              width: 250,
              height: 56,
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(primaryColor)),
                child: const Text(
                  'Checkout',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
