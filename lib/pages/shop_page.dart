import 'package:badges/badges.dart';
import 'package:coffee_shop_ui/utils/constants.dart';
import 'package:coffee_shop_ui/utils/static_data.dart';
import 'package:coffee_shop_ui/widgets/coffee_listing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShopPage extends StatefulWidget {
  static const String pageRoutePath = "/shop";

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // Keep track of active tab
  int _activeTab = 0;

  // used to create a dummy switching of pages
  List<Widget> _pages = [
    CoffeeListing(),
    SizedBox(),
    CoffeeListing()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: Theme.of(context).iconTheme.copyWith(color: kPrimaryColor),
        actions: [
          Badge(
            position: BadgePosition.bottomStart(bottom: -5, start: 4),
            badgeContent: Text(
              "3",
              style: TextStyle(color: Colors.white),
            ),
            badgeColor: kPrimaryColor,
            child: Image.asset(
              StaticData.shoppingBagImgPath,
              width: 45,
            ),
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Positioned(
                top: 0,
                left: 100,
                child: Opacity(
                  opacity: 0.1,
                  child: Image.asset(
                    StaticData.coffee2ImgPath,
                    width: 150,
                  ),
                )),
            Positioned(
                top: 0,
                right: -180,
                child: Image.asset(StaticData.squareImgPath)),
            Positioned(
                left: -70,
                bottom: -40,
                child: Image.asset(StaticData.drumImgPath)),
            SafeArea(
                child: SingleChildScrollView(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text(
                      "Shop",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 24),
                      height: ScreenUtil().setHeight(60),
                      child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  _activeTab = index;
                                });
                              },
                              // Animated Container Used for Little Switch animation
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 450),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                height: ScreenUtil().setHeight(48),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: _activeTab == index
                                        ? kTextColor
                                        : kTextColor.withOpacity(.2)),
                                child: Center(
                                  child: Text(
                                    StaticData.categories[index].name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: _activeTab == index
                                            ? Colors.white
                                            : kTextColor),
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(width: 15);
                          },
                          itemCount: StaticData.categories.length),
                    ),
                    SizedBox(height: 20),
                    AnimatedSwitcher(duration: const Duration(milliseconds: 450), child: _pages[_activeTab],)
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
