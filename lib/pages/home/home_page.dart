import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/product_card.dart';
import 'package:shamo/widgets/product_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hallo, Dicky Andeyan',
                      style: primaryTextStyle.copyWith(
                          fontSize: 24, fontWeight: semiBold)),
                  Text('@dickyandeyan',
                      style: subtitleTextStyle.copyWith(fontSize: 16))
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              margin: const EdgeInsets.only(left: 16),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image:
                      DecorationImage(image: AssetImage('assets/avatar.png'))),
            )
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: primaryColor),
                child: Text(
                  'All Shoes',
                  style: primaryTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: transparentColor,
                    border: Border.all(color: subtitleColor)),
                child: Text(
                  'Running',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: transparentColor,
                    border: Border.all(color: subtitleColor)),
                child: Text(
                  'Training',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: transparentColor,
                    border: Border.all(color: subtitleColor)),
                child: Text(
                  'Basketball',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: transparentColor,
                    border: Border.all(color: subtitleColor)),
                child: Text(
                  'Hiking',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget populaProductsTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'Popular Products',
          style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
        ),
      );
    }

    Widget popularProducts() {
      return Container(
        margin: const EdgeInsets.only(top: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              const Row(
                children: [
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget newArrivalsTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'New Arrivals',
          style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: const EdgeInsets.only(top: 14),
        child: const Column(
          children: [
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
        populaProductsTitle(),
        popularProducts(),
        newArrivalsTitle(),
        newArrivals()
      ],
    );
  }
}
