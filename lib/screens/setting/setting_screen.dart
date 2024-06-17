import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_kit/constants.dart';
import 'package:shop_kit/widgets/spacing_height.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool switchNotification = true;
  bool switchUpdate = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Setting",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
              ),
            ),
            const SpaceHeight(height: 20),
            ListTile(
              onTap: () {},
              trailing: const Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.black,
              ),
              leading: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 230),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                width: 48,
                height: 48,
                child: const Icon(
                  Icons.email,
                  color: primaryColor,
                ),
              ),
              title: const Text(
                'Email Support',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SpaceHeight(height: 20),
            ListTile(
              onTap: () {},
              trailing: const Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.black,
              ),
              leading: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 230),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                width: 48,
                height: 48,
                child: const Icon(
                  Icons.question_mark_outlined,
                  color: primaryColor,
                ),
              ),
              title: const Text(
                'FAQ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SpaceHeight(height: 20),
            ListTile(
              onTap: () {},
              trailing: const Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.black,
              ),
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
              title: const Text(
                'Privacy Stetesment',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SpaceHeight(height: 20),
            ListTile(
              onTap: () {},
              trailing: CupertinoSwitch(
                value: switchNotification,
                activeColor: primaryColor,
                onChanged: (value) {
                  setState(() {
                    switchNotification = value;
                  });
                },
              ),
              leading: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 230),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                width: 48,
                height: 48,
                child: const Icon(
                  Icons.notifications,
                  color: primaryColor,
                ),
              ),
              title: const Text(
                'Notification',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SpaceHeight(height: 20),
            ListTile(
              onTap: () {},
              trailing: CupertinoSwitch(
                value: switchUpdate,
                activeColor: primaryColor,
                onChanged: (value) {
                  setState(() {
                    switchUpdate = value;
                  });
                },
              ),
              leading: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 230),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                width: 48,
                height: 48,
                child: const Icon(
                  Icons.replay_sharp,
                  color: primaryColor,
                ),
              ),
              title: const Text(
                'Update',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
