import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodies_app_flutter/models/category.dart';
import 'package:foodies_app_flutter/models/foods.dart';
import 'package:foodies_app_flutter/ui/pages/detail_page.dart';
import 'package:foodies_app_flutter/ui/widgets/category_widgets.dart';
import 'package:foodies_app_flutter/ui/widgets/food_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xff212121),
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Note: Header
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24,
                      right: 24,
                      top: 55,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.search,
                            size: 28,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            print("Pressed");
                          },
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/ic_notif.png",
                              width: 31,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Image.asset(
                              "assets/user.png",
                              width: 39,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // Note: Title
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Welcome Cuangs",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Let’s Eat",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  Container(
                    height: 126,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: mockCategory.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                            left: index == 0 ? 24 : 49,
                            right: index == mockCategory.length - 1 ? 24 : 0,
                          ),
                          child: CategoryWidget(
                            category: mockCategory[index],
                            onTap: () {
                              print("Pressed");
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 42,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Food",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Show All",
                          style: TextStyle(
                            color: Color(0xff85FF71),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    height: 259,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: mockFoods.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                            left: index == 0 ? 24 : 49,
                            right: index == mockFoods.length - 1 ? 24 : 0,
                          ),
                          child: FoodWidget(
                            foods: mockFoods[index],
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailPage(
                                            foods: mockFoods[index],
                                          )));
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
