import 'package:coffee_shop_ui/pages/coffee_details_page.dart';
import 'package:coffee_shop_ui/utils/constants.dart';
import 'package:coffee_shop_ui/utils/helper.dart';
import 'package:coffee_shop_ui/utils/static_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CoffeeListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StaggeredGridView.countBuilder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: StaticData.coffees.length,
        crossAxisCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              nextScreen(context, CoffeeDetailsPage.pageRoutePath,
                  arguments: StaticData.coffees[index]);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.white, offset: Offset(0, 2), blurRadius: 4)
                ]),
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: StaticData.coffees[index].image)),
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            StaticData.coffees[index].name,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            StaticData.coffees[index].description,
                            style: TextStyle(fontSize: 12, color: kTextColor),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$${StaticData.coffees[index].price.toStringAsFixed(2)}",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Icon(FlutterIcons.add_circle_mdi),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        staggeredTileBuilder: (int index) => StaggeredTile.count(2, 3),
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
    );
  }
}
