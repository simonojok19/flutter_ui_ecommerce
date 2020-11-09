import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../../constants/constants.dart';
import '../../../constants/constants.dart';
import '../../../constants/constants.dart';
import '../../../constants/constants.dart';
import '../../../model/house.dart';

class HouseDetails extends StatefulWidget {
  final House house;

  const HouseDetails({Key key, this.house}) : super(key: key);
  @override
  _HouseDetailsState createState() => _HouseDetailsState();
}

class _HouseDetailsState extends State<HouseDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: appPadding,
              left: appPadding,
              right: appPadding
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      '\$${widget.house.price.toStringAsFixed(3)}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      '${widget.house.address}',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: black.withOpacity(0.4)
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                Text(
                  '${widget.house.time} hours ago',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: appPadding,
              bottom: appPadding
            ),
            child: Text(
              'House Information',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              children: [
                _buildCard(widget.house.sqFeet.toString(), 'Square foot'),
                _buildCard(widget.house.bedRooms.toString(), 'Bedrooms'),
                _buildCard(widget.house.bathRooms.toString(), 'Bathrooms'),
                _buildCard(widget.house.garages.toString(), 'Garages'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: appPadding,
              right: appPadding,
              bottom: appPadding * 4
            ),
            child: Text(
              widget.house.description,
              style: TextStyle(
                color: black.withOpacity(0.4),
                height: 1.5
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding _buildCard(String value, String unit) {
    return Padding(
                padding: EdgeInsets.only(
                  left: appPadding,
                  bottom: appPadding
                ),
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: white,
                    border: Border.all(
                      color: black
                    ),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        value,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        unit,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                ),
              );
  }
}
