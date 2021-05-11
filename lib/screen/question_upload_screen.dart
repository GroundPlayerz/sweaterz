import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sweaterz/constants/colors.dart';
import 'package:sweaterz/constants/values.dart';
import 'package:sweaterz/model/sport/sport.dart';
import 'package:sweaterz/screen/home_screen.dart';
import 'package:sweaterz/screen/question_sport_selection_screen.dart';
import 'package:sweaterz/widgets/pick_method.dart';
import 'package:video_compress/video_compress.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

class QuestionUploadScreen extends StatefulWidget {
  @override
  _QuestionUploadScreenState createState() => _QuestionUploadScreenState();
}

class _QuestionUploadScreenState extends State<QuestionUploadScreen> {
  final TextEditingController contentController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final IVideoCompress videoCompress = VideoCompress;
  FocusNode? myFocusNode;

  Sport? selectedSport;
  List<String> addedTagsList = [];

  List<AssetEntity> imageAssets = <AssetEntity>[];
  int get imageAssetsLength => imageAssets.length;
  List<AssetEntity> videoAsset = <AssetEntity>[];
  int get videoAssetLength => videoAsset.length;
  List<AssetEntity> get totalAssets => videoAsset + imageAssets;
  int get totalAssetsLength => totalAssets.length;

  bool isDisplayingDetail = true;

  PickMethod get imagesPickMethod => PickMethod(
        method: (
          BuildContext context,
          List<AssetEntity> assets,
        ) async {
          return await AssetPicker.pickAssets(
            context,
            maxAssets: 9,
            selectedAssets: assets,
            requestType: RequestType.image,
            pickerTheme: kAssetsPickerThemeData,
            textDelegate: EnglishTextDelegate(),
          );
        },
      );
  PickMethod get videoPickMethod => PickMethod(
        method: (
          BuildContext context,
          List<AssetEntity> assets,
        ) async {
          return await AssetPicker.pickAssets(
            context,
            maxAssets: 1,
            selectedAssets: assets,
            requestType: RequestType.video,
            pickerTheme: kAssetsPickerThemeData,
            textDelegate: EnglishTextDelegate(),
          );
        },
      );

  Widget _selectImagesButton(BuildContext context) {
    final PickMethod imagePicker = imagesPickMethod;
    return IconButton(
      icon: Icon(Icons.image_outlined),
      onPressed: () async {
        final List<AssetEntity>? result =
            await imagePicker.method(context, imageAssets);
        if (result != null && result != imageAssets) {
          imageAssets = List<AssetEntity>.from(result);
          if (mounted) {
            setState(() {});
          }
        }
      },
    );
  }

  Widget _selectVideoButton(BuildContext context) {
    final PickMethod videoPicker = videoPickMethod;
    return IconButton(
      icon: Icon(Icons.videocam_outlined),
      onPressed: () async {
        final List<AssetEntity>? result =
            await videoPicker.method(context, videoAsset);
        if (result != null && result != videoAsset) {
          videoAsset = List<AssetEntity>.from(result);
          if (mounted) {
            setState(() {});
          }
        }
      },
    );
  }

  void removeImageAsset(int index) {
    setState(() {
      imageAssets.remove(imageAssets.elementAt(index));
      if (imageAssets.isEmpty) {
        isDisplayingDetail = false;
      }
    });
  }

  void removeVideoAsset(int index) {
    setState(() {
      videoAsset.remove(videoAsset.elementAt(index));
      if (videoAsset.isEmpty) {
        isDisplayingDetail = false;
      }
    });
  }

  Widget _imageAssetWidget(AssetEntity asset) {
    return Image(
      image: AssetEntityImageProvider(asset, isOriginal: false),
      fit: BoxFit.cover,
    );
  }

  Widget _videoAssetWidget(AssetEntity asset) {
    return Stack(
      children: <Widget>[
        Positioned.fill(child: _imageAssetWidget(asset)),
        ColoredBox(
          color: kSweaterzColor.withOpacity(0.3),
          child: Center(
            child: Icon(
              Icons.video_library,
              color: Colors.white,
              size: isDisplayingDetail ? 24.0 : 16.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget _audioAssetWidget(AssetEntity asset) {
    return ColoredBox(
      color: kSweaterzColor,
      child: Stack(
        children: <Widget>[
          AnimatedPositionedDirectional(
            duration: kThemeAnimationDuration,
            top: 0.0,
            start: 0.0,
            end: 0.0,
            bottom: isDisplayingDetail ? 20.0 : 0.0,
            child: Center(
              child: Icon(
                Icons.audiotrack,
                size: isDisplayingDetail ? 24.0 : 16.0,
              ),
            ),
          ),
          AnimatedPositionedDirectional(
            duration: kThemeAnimationDuration,
            start: 0.0,
            end: 0.0,
            bottom: isDisplayingDetail ? 0.0 : -20.0,
            height: 20.0,
            child: Text(
              asset.title ?? '',
              style: const TextStyle(height: 1.0, fontSize: 10.0),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _assetWidgetBuilder(AssetEntity asset) {
    Widget widget;
    switch (asset.type) {
      case AssetType.audio:
        widget = _audioAssetWidget(asset);
        break;
      case AssetType.video:
        widget = _videoAssetWidget(asset);
        break;
      case AssetType.image:
      case AssetType.other:
        widget = _imageAssetWidget(asset);
        break;
    }
    return widget;
  }

  Widget _selectedAssetDeleteButton(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (totalAssets[index].type == AssetType.video) {
            videoAsset.remove(videoAsset.elementAt(index));
          } else if (totalAssets[index].type == AssetType.image &&
              videoAssetLength == 0) {
            imageAssets.remove(imageAssets.elementAt(index));
          } else {
            imageAssets.remove(imageAssets.elementAt(index - 1));
          }
        });
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: kSweaterzColor.withOpacity(0.5),
        ),
        child: Icon(
          Icons.close,
          color: kSweaterzColor,
          size: 18.0,
        ),
      ),
    );
  }

  Widget _carouselMediaViewer() {
    return CarouselSlider.builder(
      options: CarouselOptions(
        aspectRatio: 1,
        //height: 300.0,
        enableInfiniteScroll: false,
      ),
      itemCount: totalAssetsLength,
      itemBuilder: (context, index, _) {
        final AssetEntity mediaAsset = totalAssets[index];
        // final AssetType mediaAssetType = mediaAsset.type;
        return Builder(
          builder: (context) {
            return Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: _assetWidgetBuilder(mediaAsset),
                    ),
                    AnimatedPositioned(
                      duration: kThemeAnimationDuration,
                      top: -30.0,
                      right: -30.0,
                      child: _selectedAssetDeleteButton(index),
                    ),
                  ],
                ));
          },
        );
      },
    );
  }

  Widget _contentArea(BuildContext context) => Container(
        height: 300,
        child: Padding(
          padding: EdgeInsets.fromLTRB(21, 10, 21, 21),
          child: TextField(
            cursorColor: kSweaterzColor,
            controller: contentController,
            focusNode: myFocusNode,
            autofocus: false,
            // style: kPostBodyTextStyle,
            decoration: kTextFieldDecoration.copyWith(
              hintText: 'Write description.',
              // hintStyle: kPostBodyTextStyle.copyWith(color: kGreyColor1_767676),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
            keyboardType: TextInputType.multiline,
            maxLines: null,
          ),
        ),
      );

  Widget _titleArea(BuildContext context) => Container(
        height: 50,
        child: Padding(
          padding: EdgeInsets.fromLTRB(21, 10, 21, 21),
          child: TextField(
            cursorColor: kSweaterzColor,
            controller: titleController,
            focusNode: myFocusNode,
            autofocus: false,
            // style: kPostBodyTextStyle,
            decoration: kTextFieldDecoration.copyWith(
              hintText: 'Write title.',
              // hintStyle: kPostBodyTextStyle.copyWith(color: kGreyColor1_767676),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
            keyboardType: TextInputType.multiline,
            maxLines: 1,
          ),
        ),
      );

  Widget _selectedSportsDeleteButton(sport) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSport = null;
        });
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: kSweaterzColor.withOpacity(0.5),
        ),
        child: Icon(
          Icons.close,
          color: kSweaterzColor,
          size: 18.0,
        ),
      ),
    );
  }

  Widget get _sportSelectionArea => Container(
        height: 90,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 21, top: 13, right: 0, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Sports',
                    // style: kUploadScreenCategoryTextStyle,
                  ),
                  SizedBox(width: 18),
                  Text(
                    'What kinds of sports are you playing?',
                    // style: kUploadScreenCategoryDetailTextStyle.copyWith(
                    //     color: kGreyColor1_767676),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 5,
                left: 12,
              ),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () async {
                      myFocusNode?.unfocus();
                      final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuestionSportSelectionScreen(
                                selectedSport: selectedSport),
                          ));
                      setState(() {
                        if (result != null) {
                          selectedSport = result;
                        }
                      });
                    },
                    child: Text(
                      'Select Sport',
                      // style: kUploadScreenAddButtonTextStyle.copyWith(
                      //     color: kGreyColor1_767676),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      dragStartBehavior: DragStartBehavior.start,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (selectedSport != null)
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              child: Stack(children: [
                                Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10.0),
                                    child: Text(
                                      selectedSport!.name,
                                      style: TextStyle(fontSize: 16.0),
                                    )),
                                AnimatedPositioned(
                                  duration: kThemeAnimationDuration,
                                  top: -3.0,
                                  right: -3.0,
                                  child: _selectedSportsDeleteButton(
                                      selectedSport),
                                ),
                              ]),
                            ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhiteColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: kWhiteColor,
          elevation: 0,
          actionsIconTheme: IconThemeData(color: Colors.black),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Text('Next'))
          ],
        ),
        body: GestureDetector(
          onTap: () {
            myFocusNode?.unfocus();
          },
          child: ListView(
            children: [
              _titleArea(context),
              kDivider,
              _sportSelectionArea,
              kDivider,
              _contentArea(context),
              totalAssetsLength == 0 ? Container() : _carouselMediaViewer(),
              Row(
                children: [
                  _selectImagesButton(context),
                  _selectVideoButton(context),
                ],
              )
            ],
          ),
        ));
  }
}
