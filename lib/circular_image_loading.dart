library circular_image_loading;

import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

class CircularImageLoading extends StatelessWidget {

  final double size;
  final Color indicatorColor;
  final Color circleColor;
  final String imagePath;

  CircularImageLoading({this.size = 65.0, this.indicatorColor = Colors.green, this.circleColor = Colors.transparent, @required this.imagePath});

  @override
  Widget build(BuildContext context) {

    var image;
    if (imagePath != null) {
      if (!imagePath.contains("http")) {
        image = AssetImage(imagePath);
      } else {
        image = NetworkImage(imagePath);
      }
    }
    return Center(
      child: Container(
        margin: EdgeInsets.all(4.0),
        child: Stack(
          children: <Widget>[
            (image != null) ? Positioned(
              top: 3.0,
              left: 3.0,
              bottom: 3.0,
              right: 3.0,
              child: Container(
                width: this.size,
                height: this.size,
                decoration: BoxDecoration(
                    color: this.circleColor,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: image,
                        fit: BoxFit.contain)),
              ),
            ) : Container(),
            SizedBox(
                width: this.size + 6.0,
                height: this.size + 6.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                      this.indicatorColor),
                ))
          ],
        ),
      ),
    );
  }
}