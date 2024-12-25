import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImageWidget extends StatelessWidget {
  const CachedImageWidget({super.key, required this.imgUrl, this.imgHeight, this.imgWidth, this.boxFit});
final String imgUrl;
  final double? imgHeight;
  final double? imgWidth;
  final BoxFit? boxFit;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(

      imageUrl: 'https://picsum.photos/250?image=9',
     fit: BoxFit.cover,
    );
  }
}