import 'package:coffee_shop_ui/utils/constants.dart';
import 'package:coffee_shop_ui/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: -70,
            child: Image.asset("assets/images/coffee2.png"),
          ),
          Positioned(
            bottom: 0,
            left: -70,
            child: Image.asset("assets/images/coffee.png"),
          ),
          Positioned(
            bottom: -10,
            right: -70,
            child: Image.asset(
              "assets/images/coffee_cup.png",
              width: 250,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 190),
                  Text(
                    "Shop Best \n Coffee In \n Town",
                    style: TextStyle(
                        fontSize: 34,
                        color: kTextColor,
                        fontWeight: FontWeight.w700,
                        height: 1.3),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Experience the best taste of coffee with us exclusively",
                    style: TextStyle(
                        fontSize: 18, height: 1.8, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: ScreenUtil().setHeight(48),
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      onPressed: (){
                        nextScreen(context, "/shop");
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Text("Shop Now"),
                      color: kTextColor,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
