import 'package:flutter/material.dart';

import 'package:foodies_app_flutter/models/category.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWidget extends StatefulWidget {
  final Category category;
  final Function onTap;

  const CategoryWidget({
    this.category,
    this.onTap,
  });

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap();
        }
      },
      child: Container(
        height: 126,
        width: 66,
        decoration: BoxDecoration(
          color: Color(0xff85FF71),
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            color: Colors.white,
            width: 5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.category.image,
              width: 37,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              widget.category.name,
              style: GoogleFonts.roboto(),
            )
          ],
        ),
      ),
    );
  }
}
