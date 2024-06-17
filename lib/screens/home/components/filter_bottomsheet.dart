import 'package:flutter/material.dart';
import 'package:shop_kit/constants.dart';
import 'package:shop_kit/widgets/spacing_height.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  int selectedIndex = 0;
  double startPrice = 50.0;
  double endPrice = 200.0;
  double startDistance = 500.0;
  double endDistance = 2000.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (builder) {
              return StatefulBuilder(builder: (context, setState) {
                return Container(
                  height: 700.0,
                  color: Colors.transparent,
                  child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40.0),
                              topRight: Radius.circular(40.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SpaceHeight(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Clear",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                                const Text(
                                  "Filters",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 223, 223, 223),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    padding: const EdgeInsets.all(8),
                                    child: const Icon(
                                      Icons.close,
                                      size: 20,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const Divider(),
                            const SpaceHeight(height: 20),
                            const Text(
                              "Category",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const SpaceHeight(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = 0;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: selectedIndex == 0
                                          ? primaryColor
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromARGB(
                                                  255, 228, 228, 228)
                                              .withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      "New Arrival",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: selectedIndex == 0
                                              ? Colors.white
                                              : Colors.black),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = 1;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: selectedIndex == 1
                                          ? primaryColor
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromARGB(
                                                  255, 228, 228, 228)
                                              .withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      "Top Tranding",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: selectedIndex == 1
                                              ? Colors.white
                                              : Colors.black),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = 2;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: selectedIndex == 2
                                          ? primaryColor
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromARGB(
                                                  255, 228, 228, 228)
                                              .withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      "Featured Products",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: selectedIndex == 2
                                              ? Colors.white
                                              : Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SpaceHeight(height: 30),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Pricing",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "\$50 - \$200",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            RangeSlider(
                              activeColor: primaryColor,
                              values: RangeValues(startPrice, endPrice),
                              labels: RangeLabels(
                                  '\$50'.toString(), '\$200'.toString()),
                              onChanged: (value) {
                                setState(() {
                                  startPrice = value.start;
                                  endPrice = value.end;
                                });
                              },
                              min: 50.0,
                              max: 200.0,
                            ),
                            const SpaceHeight(height: 30),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Distance",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "500m - 2Ksm",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            RangeSlider(
                              activeColor: primaryColor,
                              values: RangeValues(startDistance, endDistance),
                              labels: RangeLabels(
                                  '500m'.toString(), '2Km'.toString()),
                              onChanged: (value) {
                                setState(() {
                                  startDistance = value.start;
                                  endDistance = value.end;
                                });
                              },
                              min: 500.0,
                              max: 2000.0,
                            ),
                            const SpaceHeight(height: 30),
                            Center(
                              child: SizedBox(
                                width: 200,
                                height: 56,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: const ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          primaryColor)),
                                  child: const Text(
                                    'Apply Filter',
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
                      )),
                );
              });
            });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        decoration: const BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        width: 48,
        height: 48,
        child: const Icon(
          Icons.filter_list_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
