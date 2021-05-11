import 'package:flutter/material.dart';
import 'package:sweaterz/constants/colors.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

class PickMethod {
  const PickMethod({
    required this.method,
  });

  final Future<List<AssetEntity>?> Function(BuildContext, List<AssetEntity>)
      method;

  static PickMethod common = PickMethod(
    method: (
      BuildContext context,
      List<AssetEntity> assets,
    ) async {
      return await AssetPicker.pickAssets(
        context,
        maxAssets: 9,
        pathThumbSize: 84,
        gridCount: 4,
        selectedAssets: assets,
        themeColor: kSweaterzColor,
        requestType: RequestType.image,
      );
    },
  );
}
