import 'package:flutter/material.dart';
import 'package:real_estate_app/screens/details/components/carousel_images.dart';

import '../../model/house.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatefulWidget {
  final House house;

  const DetailsScreen({Key key, this.house}) : super(key: key);
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              CarouselImages(
                moreImagesUrl: widget.house.moreImagesUrl,
              ),
              CustomAppBar(),
            ],
          )
        ],
      ),
    );
  }
}
