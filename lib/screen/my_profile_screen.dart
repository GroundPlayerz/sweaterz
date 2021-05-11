import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sweaterz/bloc/cubit/profile_cubit.dart';
import 'package:sweaterz/bloc/state/profile_state.dart';
import 'package:sweaterz/constants/colors.dart';
import 'package:sweaterz/constants/text_styles.dart';
import 'package:sweaterz/model/sport/sport.dart';
import 'package:sweaterz/model/user/user.dart';
import 'package:sweaterz/screen/admin_screen.dart';
import 'package:sweaterz/screen/setting_screen.dart';

class MyProfileScreen extends StatefulWidget {
  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<ProfileCubit>(context).getUserProfile();
  }

  @override
  Widget build(BuildContext context) {
    Widget _profileBox({required User user}) => Padding(
        padding: EdgeInsets.only(
          left: 22,
          right: 22,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.profileName,
                  style: kProfileScreenNameTextStyle,
                ),
                SizedBox(height: 5.0),
                Text(user.email, style: kProfileScreenEmailTextStyle),
              ],
            ),
            CircleAvatar(
              radius: 24,
              foregroundImage: CachedNetworkImageProvider(
                user.profilePhotoUrl,
              ),
              backgroundColor: Colors.white,
            ),
          ],
        ));

    Widget _profileFollowingSportsButton({required Sport sport}) =>
        GestureDetector(
          child: Container(
            decoration: BoxDecoration(
              color: kWhiteColor,
              border: Border.all(
                color: Color(0xffDBDBDB),
                width: 1,
              ),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
            child: Text(
              sport.name,
              style: kHomeFeedQuestionSportTextStyle,
            ),
          ),
        );

    Widget _profileFollowingSportButtonsScrollView(
            {required List<Sport> followingSports}) =>
        Expanded(
            child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          dragStartBehavior: DragStartBehavior.start,
          child: Row(
            children: [
              Container(),
              for (Sport sport in followingSports)
                _profileFollowingSportsButton(sport: sport)
            ],
          ),
        ));

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: kWhiteColor,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingScreen()));
              })
        ],
      ),
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 19),
          BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
            if (state is Loaded) {
              User user = state.user;
              return Column(children: [
                _profileBox(user: user),
                SizedBox(
                  height: 10.0,
                ),
                state.followingSports.length == 0
                    ? Text('follow some sports!')
                    : _profileFollowingSportButtonsScrollView(
                        followingSports: state.followingSports),
                state.user.role == 'admin'
                    ? TextButton(
                        child: Text('Admin Page'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdminScreen()));
                        })
                    : Container(),
              ]);
            }
            return Container();
          }),
          // _profileSettingButton,
        ]),
      ),
    );
  }
}
