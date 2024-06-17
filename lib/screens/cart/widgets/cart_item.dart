import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../constants.dart';

class Cart_Item extends StatefulWidget {
  const Cart_Item({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.press,
    required this.bgColor,
    required this.quantity,
  });
  final String image, title;
  final VoidCallback press;
  final int price;
  final int quantity;
  final Color bgColor;

  @override
  State<Cart_Item> createState() => _Cart_ItemState();
}

class _Cart_ItemState extends State<Cart_Item> {
  int quantity = 1;

  @override
  void initState() {
    quantity = widget.quantity;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: widget.press,
        child: Container(
          padding: const EdgeInsets.all(defaultPadding / 2),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(defaultBorderRadius),
            ),
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: widget.bgColor,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(defaultBorderRadius)),
                ),
                child: Image.asset(
                  widget.image,
                  height: 100,
                ),
              ),
              const SizedBox(width: defaultPadding),
              SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(color: Colors.black),
                    ),
                    const SizedBox(height: defaultPadding),
                    Text(
                      "\$${widget.price}",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: defaultPadding),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      if (quantity > 1) {
                        setState(() {
                          quantity--;
                        });
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: primaryColor),
                      child: const Center(
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: defaultPadding),
                  Text(
                    "$quantity",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(width: defaultPadding),
                  InkWell(
                    onTap: () {
                      setState(() {
                        quantity++;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: primaryColor),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
