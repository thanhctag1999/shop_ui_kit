import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_kit/constants.dart';
import 'package:shop_kit/drawer/custom_drawer.dart';
import 'package:shop_kit/screens/cart/cart_screen.dart';
import 'package:shop_kit/screens/favorite/favorite_screen.dart';
import 'package:shop_kit/screens/home/components/filter_bottomsheet.dart';
import 'package:shop_kit/screens/home/home_screen.dart';
import 'package:shop_kit/screens/setting/setting_screen.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int pageIndex = 0;
  var pages = [const HomeScreen()];
  Color navigationBarColor = Colors.white;
  late PageController pageController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: navigationBarColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: AdvancedDrawer(
        backdrop: const SizedBox(
          width: double.infinity,
          height: double.infinity,
        ),
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: false,
        // openScale: 1.0,
        disabledGestures: false,
        childDecoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        drawer: const CustomDrawer(),
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                _advancedDrawerController.showDrawer();
              },
              icon: SvgPicture.asset("assets/icons/menu.svg"),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/icons/Location.svg"),
                const SizedBox(width: defaultPadding / 2),
                Text(
                  "15/2 New Texas",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: SvgPicture.asset("assets/icons/Notification.svg"),
                onPressed: () {},
              ),
            ],
          ),
          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            children: const <Widget>[
              HomeScreen(),
              CartScreen(),
              FavoriteScreen(),
              SettingScreen()
            ],
          ),
          bottomNavigationBar: WaterDropNavBar(
            backgroundColor: navigationBarColor,
            waterDropColor: primaryColor,
            onItemSelected: (int index) {
              setState(() {
                pageIndex = index;
              });
              pageController.animateToPage(pageIndex,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeOutQuad);
            },
            selectedIndex: pageIndex,
            barItems: <BarItem>[
              BarItem(
                filledIcon: Icons.home,
                outlinedIcon: Icons.home_outlined,
              ),
              BarItem(
                  filledIcon: Icons.shopping_bag,
                  outlinedIcon: Icons.shopping_bag_outlined),
              BarItem(
                filledIcon: Icons.favorite,
                outlinedIcon: Icons.favorite_outline,
              ),
              BarItem(
                filledIcon: Icons.person,
                outlinedIcon: Icons.person_outline,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
