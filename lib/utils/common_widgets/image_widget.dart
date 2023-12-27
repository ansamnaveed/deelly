// ignore_for_file: must_be_immutable

import 'package:deelly/utils/common_widgets/image_paths.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;
  BoxFit fit;

  ImageWidget({
    required this.imagePath,
    this.width = 100,
    this.height = 100,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return imagePath.startsWith('assets')
        ? Image.asset(
            imagePath,
            width: width,
            height: height,
            fit: fit,
            errorBuilder: (BuildContext context, Object exception,
                StackTrace? stackTrace) {
              return _showPlaceholderImage();
            },
          )
        : Image.network(
            imagePath,
            width: width,
            height: height,
            fit: fit,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child;
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
            errorBuilder: (BuildContext context, Object exception,
                StackTrace? stackTrace) {
              return _showPlaceholderImage();
            },
          );
  }

  Widget _showPlaceholderImage() {
    return Image.asset(
      ImagePath.logo,
      width: width,
      height: height,
      fit: fit,
    );
  }
}
