import 'package:flutter/material.dart';

import 'package:foodies_app_flutter/models/foods.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodWidget extends StatelessWidget {
  final Foods foods;
  final Function onTap;

  const FoodWidget({
    this.foods,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 181,
            width: 181,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(foods.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            foods.name,
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            foods.address,
            maxLines: 1,
            overflow: TextOverflow.clip,
            style: GoogleFonts.roboto(
              color: Color(0xff767575),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                width: 64,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xff85FF71),
                ),
                child: Center(
                  child: Text(
                    "\$${foods.price.toString()}",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 17,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 19,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                "${foods.rate} (${foods.count})",
                style: GoogleFonts.roboto(
                  color: Color(0xff767575),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
