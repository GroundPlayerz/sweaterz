import 'package:flutter/material.dart';
import 'package:sweaterz/constants/colors.dart';
import 'package:sweaterz/constants/text_styles.dart';
import 'package:sweaterz/model/question/question.dart';
import 'package:sweaterz/screen/my_profile_screen.dart';
import 'package:sweaterz/screen/question_upload_screen.dart';
import 'package:sweaterz/screen/search_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AppBar _homeScreenAppBar(BuildContext context) => AppBar(
        titleSpacing: 0.0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        backgroundColor: kWhiteColor,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffF0F0F0),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.only(left: 12, top: 6, bottom: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.search_rounded,
                    color: Color(0xffD3D3D3),
                  ),
                  SizedBox(width: 12),
                  Text(
                    'Sports,tags and content',
                    style: kSearchAppBarTextStyle.copyWith(
                        color: kGreyColor2_999999),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchScreen()));
            },
          ),
        ),
        actions: [
          SizedBox(width: 12.0),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(4.0),
              alignment: Alignment.center,
              child: Text(
                '🔔',
                style: kSearchAppBarTextStyle.copyWith(fontSize: 30),
              ),
            ),
            onTap: () {},
          ),
          SizedBox(width: 8),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: CircleAvatar(
                radius: 16,
                backgroundColor: Colors.brown.shade800,
                child: Text('AH'),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyProfileScreen()));
            },
          ),
          SizedBox(width: 22.0),
        ],
      );

  Widget homeFeedQuestionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 14),
        Row(
          children: [
            Text(
              'Running',
              style: kHomeFeedQuestionSportTextStyle,
            ),
            SizedBox(width: 8),
            Text(
              'squat',
              style: kHomeFeedQuestionTagsTextStyle,
            ),
            SizedBox(width: 6),
            Text(
              'posture',
              style: kHomeFeedQuestionTagsTextStyle,
            ),
          ],
        ),
        SizedBox(height: 6),
        Text('What is your favorite season to enjoy running?'),
        SizedBox(height: 6),
        Row(
          children: [
            Text('DORIII'),
            SizedBox(width: 6.0),
            Text('01:03'),
            SizedBox(width: 6.0),
            Text('12 Views')
          ],
        ),
        SizedBox(height: 6),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue,
      appBar: _homeScreenAppBar(context),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Text(
              'Questions.',
              style: kBigTitleTextStyle,
            ),
            homeFeedQuestionWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => QuestionUploadScreen()));
        },
        label: const Text('Ask a Question!'),
        icon: const Icon(Icons.edit),
        backgroundColor: kSweaterzColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
