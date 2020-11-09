import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
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
        height: size.height * 0.22,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: black.withOpacity(0.4),
                    ),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Icon(
                    Icons.sort_outlined
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: black.withOpacity(0.4),
                      ),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Icon(
                      Icons.insights_rounded
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
