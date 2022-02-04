import 'package:flutter/material.dart';
import 'package:shop_app_design/models/product_category.dart';

import '../../constants.dart';
import 'product_card.dart';
import 'section_title.dart';


class Popular extends StatelessWidget {
  const Popular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Popular",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demoProduct.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: ProductCard(
                  image: demoProduct[index].image,
                  title: demoProduct[index].title,
                  price: demoProduct[index].price,
                  bgColor: demoProduct[index].bgColor,
                  press: () {},
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
