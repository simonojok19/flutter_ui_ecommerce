import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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
import '../../../model/house.dart';

class Houses extends StatefulWidget {
  @override
  _HousesState createState() => _HousesState();
}

class _HousesState extends State<Houses> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: houseList.length,
        itemBuilder: (context, index) {
          return _buildHouse(context, index);
        },
      ),
    );
  }

  Widget _buildHouse(BuildContext context, int index) {
    Size size =  MediaQuery.of(context).size;
    House house = houseList[index];
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: appPadding,
        vertical: appPadding / 2
      ),
      child: Container(
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage(house.imageUrl),
                    height: 180,
                    width: size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: appPadding / 2,
                  top: appPadding / 2,
                  child: Container(
                    child: IconButton(
                      icon: house.isFav ? Icon(
                        Icons.favorite_rounded,
                        color: red,
                      ) :  Icon(
                        Icons.favorite_border_rounded,
                        color: black,
                      ),
                      onPressed: () {
                        setState(() {
                          house.isFav =! house.isFav;
                        });
                      },
                    ),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  '\$${house.price.toStringAsFixed(3)}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Text(
                    '\$${house.address}',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 15,
                        color: black.withOpacity(0.4)
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${house.bedRooms} bedrooms / ',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  '${house.bathRooms} bathrooms / ',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  '${house.sqFeet} sqFT',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
