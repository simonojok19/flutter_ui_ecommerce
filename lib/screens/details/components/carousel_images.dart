import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CarouselImages extends StatefulWidget {
  final List<String> moreImagesUrl;
  CarouselImages({ this.moreImagesUrl });

  @override
  _CarouselImagesState createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {
  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.35,
      child: Carousel(
        dotSize: 5,
        dotBgColor: Colors.transparent,
        autoplay: false,
        images: [
          AssetImage(widget.moreImagesUrl[0]),
          AssetImage(widget.moreImagesUrl[1]),
          AssetImage(widget.moreImagesUrl[2]),
          AssetImage(widget.moreImagesUrl[3]),
          AssetImage(widget.moreImagesUrl[5])
        ],
      ),
    );
  }
}
