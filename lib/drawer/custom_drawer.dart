import 'package:flutter/material.dart';
import 'package:shop_kit/constants.dart';
import 'package:shop_kit/screens/auth/login/login.dart';
import 'package:shop_kit/widgets/spacing_height.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTileTheme(
        textColor: Colors.black,
        iconColor: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(8), // Border width
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: CircleAvatar(
                    radius: 45,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/avatar.jpg',
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Alex Nikiforov",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              fontWeight: FontWeight.w500, color: Colors.black),
                    ),
                    Text(
                      "Designer",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.black),
                    ),
                  ],
                ),
                const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 60,
                )
              ],
            ),
            const SpaceHeight(height: 50),
            ListTile(
              onTap: () {},
              leading: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 230),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                width: 48,
                height: 48,
                child: const Icon(
                  Icons.favorite,
                  color: primaryColor,
                ),
              ),
              title: const Text(
                'My Favourites',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SpaceHeight(height: 10),
            ListTile(
              onTap: () {},
              leading: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 230),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                width: 48,
                height: 48,
                child: const Icon(
                  Icons.wallet,
                  color: primaryColor,
                ),
              ),
              title: const Text('Wallets'),
            ),
            const SpaceHeight(height: 10),
            ListTile(
              onTap: () {},
              leading: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 230),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                width: 48,
                height: 48,
                child: const Icon(
                  Icons.shopping_bag,
                  color: primaryColor,
                ),
              ),
              title: const Text('My orders'),
            ),
            const SpaceHeight(height: 10),
            ListTile(
              onTap: () {},
              leading: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 230),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                width: 48,
                height: 48,
                child: const Icon(
                  Icons.edit_document,
                  color: primaryColor,
                ),
              ),
              title: const Text('About us'),
            ),
            const SpaceHeight(height: 10),
            ListTile(
              onTap: () {},
              leading: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 230),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                width: 48,
                height: 48,
                child: const Icon(
                  Icons.lock,
                  color: primaryColor,
                ),
              ),
              title: const Text('Private policy'),
            ),
            const SpaceHeight(height: 10),
            ListTile(
              onTap: () {},
              leading: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 230),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                width: 48,
                height: 48,
                child: const Icon(
                  Icons.settings,
                  color: primaryColor,
                ),
              ),
              title: const Text('Settings'),
            ),
            const Spacer(),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ));
              },
              leading: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 230),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                width: 48,
                height: 48,
                child: const Icon(
                  Icons.login_rounded,
                  color: primaryColor,
                ),
              ),
              title: const Text('Log out'),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                'assets/images/logo.png',
                width: 80,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
