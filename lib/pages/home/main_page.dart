import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shamo/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

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
          notchMargin: 20,
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
                      ),
                      onPressed: () {
                        // Handle home button action
                      },
                    ),
                    IconButton(
                      icon: Image.asset(
                        'assets/icon_chat.png',
                        width: 20,
                      ),
                      onPressed: () {
                        // Handle chat button action
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
                        'assets/icon_home.png',
                        width: 20,
                      ),
                      onPressed: () {
                        // Handle home button action
                      },
                    ),
                    IconButton(
                      icon: Image.asset(
                        'assets/icon_chat.png',
                        width: 20,
                      ),
                      onPressed: () {
                        // Handle chat button action
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

    return Scaffold(
      backgroundColor: bgColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtonNav(),
      body: Center(
        child: Text('Home Page', style: primaryTextStyle),
      ),
    );
  }
}
