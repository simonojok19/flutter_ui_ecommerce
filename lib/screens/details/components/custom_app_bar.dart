import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
          left: appPadding,
          right: appPadding,
          top: appPadding * 2
      ),
      child: Container(
        height: size.height * 0.1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: white.withOpacity(0.4),
                        ),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Icon(
                        Icons.arrow_back_rounded,
                        color: white,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: white.withOpacity(0.4),
                      ),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Icon(
                      Icons.favorite_border,
                      color: white,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}