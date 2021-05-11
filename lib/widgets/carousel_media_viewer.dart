import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

class CarouselMediaViewer extends StatelessWidget {
  final List<AssetEntity> mediaAssetList;
  CarouselMediaViewer({required this.mediaAssetList});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        aspectRatio: 1,
        //height: 300.0,
        enableInfiniteScroll: false,
      ),
      itemCount: mediaAssetList.length,
      itemBuilder: (context, index, _) {
        final AssetEntity media = mediaAssetList[index];
        return Builder(
          builder: (context) {
            return Container();
          },
        );
      },
    );
  }
}
