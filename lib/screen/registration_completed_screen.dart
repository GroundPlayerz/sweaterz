import 'package:flutter/material.dart';
import 'package:sweaterz/constants/colors.dart';
import 'package:sweaterz/constants/text_styles.dart';
import 'package:sweaterz/constants/values.dart';
import 'package:sweaterz/screen/sports_following_screen.dart';
import 'package:sweaterz/widgets/buttons.dart';

class RegistrationCompletedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    double convertHeightRatio = mediaQuery.size.height / kIphoneXHeight;

    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 38.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: double.infinity),
                SizedBox(height: 90 * convertHeightRatio),
                Row(
                  children: [
                    Text(
                      'You are now Sweaterz!',
                      style: kBigTitleTextStyle,
                    ),
                    Container(
                      height: 42.0 * convertHeightRatio,
                      child: Image(
                        image: AssetImage('images/sign_up_dancing@3x.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8 * convertHeightRatio),
                Text(
                  'Congratulation! You are the member of Sweaterz. Please upload your passionate stories on our app. We hope you enjoy Sweaterz!',
                  style: kBodyTextStyle1M.copyWith(color: kGreyColor1_767676),
                ),
                SizedBox(height: 90 * convertHeightRatio),
                blueColorTextButton(
                  textContent: 'Next',
                  isButtonEnabled: true,
                  onPressed: () async {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SportsFollowingScreen()),
                        (route) => false);
                  },
                ),
                Container(
                  height: 42.0 * convertHeightRatio,
                  //padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Image(
                    image: AssetImage('images/sign_up_dancing@3x.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
