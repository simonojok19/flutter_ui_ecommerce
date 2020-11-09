import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../constants/constants.dart';
import '../../../constants/constants.dart';
import '../../../constants/constants.dart';
import '../../../constants/constants.dart';
import '../../../constants/constants.dart';
import '../../../constants/constants.dart';
import '../../../constants/constants.dart';
import '../../../constants/constants.dart';
import '../../../data/data.dart';
import '../../../data/data.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        left: appPadding,
        top: appPadding / 2,
        bottom: appPadding
      ),
      child: Container(
        height: size.height * 0.05,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return _buildCategory(context, index);
          },
        ),
      ),
    );
  }

  Widget _buildCategory(BuildContext context, int index) {
    Size size =  MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(
          right: appPadding / 3
        ),
        child: Container(
          width: size.width * 0.25,
          padding: EdgeInsets.symmetric(horizontal: appPadding / 2),
          decoration: BoxDecoration(
            color: selectedCategory  == index ? darkBlue : black.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Center(
            child: Text(
              categoryList[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedCategory == index ? white : black
              ),
            ),
          ),
        ),
      ),
    );
  }
}
