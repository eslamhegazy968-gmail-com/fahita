import 'package:cached_network_image/cached_network_image.dart';
import 'package:fahita/src/helper/helperWidget.dart';
import 'package:flutter/material.dart';

Widget networkImage(String url, {double height, double width}) {
  return CachedNetworkImage(
    imageUrl: url,
    imageBuilder: (context, imageProvider) => Image(
      image: imageProvider,
      fit: BoxFit.fill,
      height: height ?? double.infinity,
      width: width ?? double.infinity,
    ),
    placeholder: (context, url) => loaderPhoto,
    errorWidget: (context, url, error) {
      if (url == null) {
        return Icon(Icons.error);
      }
      return null;
    },
  );
}
