import 'package:flutter/material.dart';
import 'package:shamo/pages/home/chat_page.dart';
import 'package:shamo/pages/home/home_page.dart';
import 'package:shamo/pages/home/profile_page.dart';
import 'package:shamo/pages/home/wishlist_page.dart';
import 'package:shamo/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: secondaryColor,
        child: Image.asset(
          'assets/icon_cart.png',
          width: 20,
        ),
      );
    }

    Widget customButtonNav() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          color: bgColor4,
          height: 80,
          child: Row(
            mainAxisSize: MainAxisSize.max, // Ensure full width
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 56,
                width: MediaQuery.of(context).size.width / 2 - 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max, // Ensure full width
                  children: [
                    IconButton(
                      icon: Image.asset(
                        'assets/icon_home.png',
                        width: 20,
                        color: currentIndex == 0 ? primaryColor : subtitleColor,
                      ),
                      onPressed: () {
                        setState(() {
                          currentIndex = 0;
                        });
                      },
                    ),
                    IconButton(
                      icon: Image.asset(
                        'assets/icon_chat.png',
                        width: 20,
                        color: currentIndex == 1 ? primaryColor : subtitleColor,
                      ),
                      onPressed: () {
                        setState(() {
                          currentIndex = 1;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 56,
                width: MediaQuery.of(context).size.width / 2 - 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max, // Ensure full width
                  children: [
                    IconButton(
                      icon: Image.asset(
                        'assets/icon_favorite.png',
                        width: 20,
                        color: currentIndex == 2 ? primaryColor : subtitleColor,
                      ),
                      onPressed: () {
                        setState(() {
                          currentIndex = 2;
                        });
                      },
                    ),
                    IconButton(
                      icon: Image.asset(
                        'assets/icon_profile.png',
                        width: 20,
                        color: currentIndex == 3 ? primaryColor : subtitleColor,
                      ),
                      onPressed: () {
                        setState(() {
                          currentIndex = 3;
                        });
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const ChatPage();
        case 2:
          return const WishlistPage();
        case 3:
          return const ProfilePage();
        default:
          return const HomePage();
      }
    }

    return Scaffold(
        backgroundColor: bgColor1,
        floatingActionButton: cartButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: customButtonNav(),
        body: body());
  }
}
