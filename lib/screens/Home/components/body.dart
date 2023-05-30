import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height * 0.2,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height * 0.2 - 27,
                width: double.infinity,
                padding: const EdgeInsets.only(
                    left: kDefaultPadding + 5,
                    right: kDefaultPadding + 5,
                    bottom: kDefaultPadding + 36),
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hi UiShop!',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Image.asset('assets/images/logo.png')
                  ],
                ),
              ),
              Container(
                height: 54,
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(36),
                ),
                child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: kPrimaryColor.withOpacity(0.5),
                    ),
                    //enabledBorder: InputBorder
                    focusedBorder: 
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
