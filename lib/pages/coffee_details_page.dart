import 'package:coffee_shop_ui/models/coffee.dart';
import 'package:coffee_shop_ui/utils/constants.dart';
import 'package:coffee_shop_ui/utils/static_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoffeeDetailsPage extends StatelessWidget {
  static const String pageRoutePath = "/coffee-details";

  final Coffee coffee;

  CoffeeDetailsPage({@required this.coffee});

  Widget _doubleColText(String textOne, String textTwo) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 12), child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textOne,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: kPrimaryColor
          ),
        ),
        Text(
          textTwo,
          style: TextStyle(
            color: kPrimaryColor
          ),
        )
      ],
    ),);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
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
          Positioned(
            top: 0,
              width: MediaQuery.of(context).size.width,
              child: Container(
                height: 300,
                width: double.infinity,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: coffee.image
                  )
                ),
              )),
          Positioned(
              top: 265,
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coffee.description,
                      style: TextStyle(color: kTextColor),
                    ),
                    SizedBox(height: 5),
                    Text(
                      coffee.name,
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 22
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Almond milk is mostly water, so mixed with coffee, the almond flavor is totally overpowered by strong coffee. A good almond lattee needs to be made with a thick homemade vanilla almond milk creamer.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: kTextColor,
                        height: 1.8,
                      ),
                    ),
                    SizedBox(height: 20),
                    Divider(),
                    _doubleColText("Quantity", "4"),
                    Divider(),
                    _doubleColText("Amount Payable", "\$${coffee.price.toStringAsFixed(2)} USD"),
                    SizedBox(height: 36),
                    Container(
                      width: double.infinity,
                      height: ScreenUtil().setHeight(48),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        color: kTextColor,
                        onPressed: (){},
                        child: Text(
                          "Add to my cart",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
