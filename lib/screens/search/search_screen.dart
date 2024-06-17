import 'package:flutter/material.dart';
import 'package:shop_kit/constants.dart';
import 'package:shop_kit/models/Product.dart';
import 'package:shop_kit/screens/details/details_screen.dart';
import 'package:shop_kit/screens/home/components/product_card.dart';
import 'package:shop_kit/screens/home/components/search_form.dart';
import 'package:shop_kit/widgets/spacing_height.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SpaceHeight(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_outlined)),
              Text(
                "Search Result",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
              ),
            ],
          ),
          const SpaceHeight(height: 20),
          const Padding(
            padding: EdgeInsets.all(
              defaultPadding,
            ),
            child: SearchForm(),
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: demo_product.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 241, 241, 241)
                            .withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset:
                            const Offset(1, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(defaultPadding / 2),
                    child: ProductCard(
                      title: demo_product[index].title,
                      image: demo_product[index].image,
                      price: demo_product[index].price,
                      bgColor: demo_product[index].bgColor,
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
