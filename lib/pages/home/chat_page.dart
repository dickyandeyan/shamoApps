import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bgColor3,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: bgColor1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/cs.png',
                width: 80,
                height: 80,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Oops no message yet?',
                style:
                    primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              const SizedBox(height: 12),
              Text(
                'You have never done a transaction',
                style: secondaryTextStyle,
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 44,
                width: 190,
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 24,
                      ),
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  onPressed: () {},
                  child: Text('Explore store',
                      style: primaryTextStyle.copyWith(
                          fontSize: 16, fontWeight: medium)),
                ),
              )
            ],
          ),
        ),
      );
    }

    return Column(
      children: [header(), content()],
    );
  }
}
