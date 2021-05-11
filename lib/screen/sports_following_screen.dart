import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sweaterz/bloc/cubit/sports_cubit.dart';
import 'package:sweaterz/constants/colors.dart';
import 'package:sweaterz/constants/text_styles.dart';
import 'package:sweaterz/constants/values.dart';
import 'package:sweaterz/screen/home_screen.dart';
import 'package:sweaterz/widgets/buttons.dart';
import 'package:sweaterz/widgets/sports_following_list_widget.dart';

class SportsFollowingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SportsCubit>(context).getSportsWithFollowingSports();

    var mediaQuery = MediaQuery.of(context);
    double convertHeightRatio = mediaQuery.size.height / kIphoneXHeight;

    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: ListView(
              children: [
                SizedBox(height: 70 * convertHeightRatio),
                Text(
                  'Follow your sports!',
                  style: kBigTitleTextStyle,
                ),
                Text(
                    'You can follow your sports which you are interested in. You can check and add more sports in app!',
                    style:
                        kBodyTextStyle1M.copyWith(color: kGreyColor1_767676)),
                SizedBox(height: 20 * convertHeightRatio),
                SportsFollowingListWidget(),
                SizedBox(height: 30 * convertHeightRatio),
                blueColorTextButton(
                  textContent: 'Next',
                  isButtonEnabled: true,
                  onPressed: () async {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                        (route) => false);
                  },
                ),
                SizedBox(height: 10 * convertHeightRatio),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
